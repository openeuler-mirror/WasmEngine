## wasm-engine benches

wasm-engine实现了以下函数的使用wasi作为import和不使用的纯wasm计算方式的bench对比，三个函数wasi与wasm差值的均值为6.963us，差距是可以接受的：
 
* echo_string_b：传入参数参数加入字符'b'后返回
* gcd：最大公约数计算
* authentication：鉴权函数

|gcd|gcd_wasi|echo_string_b|echo_string_b_wasi|authentication|authentication_wasi|
|-|-|-|-|-|-|
|2.4947us|7.8758us|29.334us|37.620us|26.024us|33.246us|

且在鉴权函数wasm与wasi对比上发现，wasm执行的效率稍微低一些，可能与临时的内存分配有关，具体解决方式需要进一步研究给出。