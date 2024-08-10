<?php 
use App\Models\M_users;
use App\Models\M_surat;

if (! function_exists('user_field')) {
    /**
     * Returns the user data for the given field.
     *
     * @param mixed $field The field to search for.
     *
     * @return mixed|null The user data for the given field or null if the field is not found.
     */
    function user_field($field)
    {
        $authenticate = service('authentication');
        $authenticate->check();
        
        $user = $authenticate->user();
        if ($user) {
            $users = new M_users();
            return $users->find($field);
        }
        
        return null;
    }
}

if (! function_exists('surat_field')) {
    /**
     * Returns the user data for the given field.
     *
     * @param mixed $field The field to search for.
     *
     * @return mixed|null The user data for the given field or null if the field is not found.
     */
    function surat_field($field)
    {
        $authenticate = service('authentication');
        $authenticate->check();
        
        $surats = new M_surat();
        return $surats->find($field);
        
        return null;
    }
}

?>