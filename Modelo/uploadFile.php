<?php

class uploadFile
{
    // $dir = direccion donde va a colocarse el archivo, $file es el archivo
    public function upload($dir, $file)
    {
        // nombre en archivo temporal
        $tpm_name = $file['tpm_name'];
        if (is_dir($dir) && is_uploaded_file($tpm_name)) {
            $img_name = $file['name']; //nombre de la imagen o archivo.
            $type = $file['type']; // tipo.
            $size = $file['size']; // tamaño.
            $kb = 3072 * 1024;
            $path = "$dir/$name_img";
            
            if ($type == 'image/jpeg' || $type == 'image/jpg' || $type == 'image/png' && $size <= $kb) {
                move_uploaded_file($tpm_name, $path);
                return $path;
            }else {
                echo "El formato es incorrecto y/o el tamaño es mayor a 3MB";
            }
        }
    }
}
