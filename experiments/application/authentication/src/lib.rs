use std::fmt::Write;

use another_json_minimal::Json;
use md5::{Digest, Md5};

#[derive(Default)]
struct Response {
    status: String,
    body: String,
}

#[no_mangle]
pub fn authentication(data: &str) -> (*mut u8, usize) {
    // fulfill data p
    let arg_func = "argfunc";
    let json = match Json::parse(data.as_bytes()) {
        Ok(json) => json,
        Err((position, message)) => {
            panic!("`{}` at position `{}`!!!", position, message);
        }
    };
    let arg_uri = json.get("arg_uri").unwrap().print();
    let arg_body = json.get("arg_body").unwrap().print();
    let arg_secret = json.get("arg_secret").unwrap().print();

    let content = format!("{}#{}#{}", arg_uri, arg_body, arg_func);

    // create a Md5 hasher instance
    let mut hasher = Md5::new();
    // process input message
    hasher.update(content.as_bytes());
    let result = hasher.finalize();

    let slice = result.as_slice();
    let mut hash = String::with_capacity(slice.len() * 2);
    for &b in slice {
        write!(&mut hash, "{:02x}", b).unwrap();
    }

    let mut r: Response = Response::default();
    let html: String;
    if hash == arg_secret {
        r.status = "200".to_string();
        html = "<html><h1>Auth Pass!</h1><p>hash ".to_owned() + &hash + "</p></html>";
        r.body = html;
    } else {
        r.status = "403".to_string();
        html = "<html><h1>Auth Forbidden!</h1><p>hash ".to_owned()
            + &hash
            + " secret "
            + &arg_secret
            + "</p></html>";
        r.body = html;
    }

    //we use complicated another_json_minimal temporary
    let mut json = Json::new();
    let status = Json::OBJECT {
        name: String::from("status"),
        value: Box::new(Json::STRING(String::from(&r.status))),
    };

    json.add(status);
    let body = Json::OBJECT {
        name: String::from("body"),
        value: Box::new(Json::STRING(String::from(&r.body))),
    };
    json.add(body);

    let mut serialized = json.print();
    (serialized.as_mut_ptr(), serialized.len())
}

#[test]
fn test_authentication() {
    use serde::{Deserialize, Serialize};
    #[derive(Deserialize, Serialize, Default)]
    struct Data {
        arg_uri: String,
        arg_body: String,
        arg_secret: String,
    }
    let p: Data = Data {
        arg_uri: "uri".to_string(),
        arg_body: "body".to_string(),
        arg_secret: "secrect".to_string(),
    };

    let serialized = serde_json::to_string(&p).unwrap();
    let (_p, _l) = authentication(&serialized);
}
