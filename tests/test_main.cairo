%lang starknet

from starkware.cairo.common.cairo_builtins import HashBuiltin
from starkware.cairo.common.serialize import serialize_word 

from src.main import save_name,get_name

@external 
func test_identity{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(){
    save_name('eliel');
    let (n) = get_name();
    assert n = 'eliel';
    save_name('mathe');
    let (n) = get_name();
    assert n = 'mathe';
    return ();
}