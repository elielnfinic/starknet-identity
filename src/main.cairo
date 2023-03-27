%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin 

@storage_var 
func name() -> (res : felt){
}

@external 
func save_name{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(input_name : felt){
    name.write(input_name);
    return ();
}

@view 
func get_name{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (res : felt) {
    let (res) = name.read();
    return (res,);
}

@constructor 
func constructor{syscall_ptr: felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(){
    name.write('hello');
    return ();
}