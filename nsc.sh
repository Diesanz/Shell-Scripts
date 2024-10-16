
function nsc(){
    name = $1
    [-z $name] && {echo "ERROR: faltan campos"; return 1}
    [[! $name == *.*]] {name=${name}.sh}

    cat <<EOF > $name
    #!/bin/bash
    EOF

    chmod u+x $name 
    chmod u+x $name

}