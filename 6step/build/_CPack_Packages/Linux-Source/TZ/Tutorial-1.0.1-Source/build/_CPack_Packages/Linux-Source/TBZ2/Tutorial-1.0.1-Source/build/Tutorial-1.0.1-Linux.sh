#!/bin/sh

# Display usage
cpack_usage()
{
  cat <<EOF
Usage: $0 [options]
Options: [defaults in brackets after descriptions]
  --help            print this message
  --prefix=dir      directory in which to install
  --include-subdir  include the Tutorial-1.0.1-Linux subdirectory
  --exclude-subdir  exclude the Tutorial-1.0.1-Linux subdirectory
EOF
  exit 1
}

cpack_echo_exit()
{
  echo $1
  exit 1
}

# Display version
cpack_version()
{
  echo "Tutorial Installer Version: 1.0.1, Copyright (c) Humanity"
}

# Helper function to fix windows paths.
cpack_fix_slashes ()
{
  echo "$1" | sed 's/\\/\//g'
}

interactive=TRUE
cpack_skip_license=FALSE
cpack_include_subdir=""
for a in "$@"; do
  if echo $a | grep "^--prefix=" > /dev/null 2> /dev/null; then
    cpack_prefix_dir=`echo $a | sed "s/^--prefix=//"`
    cpack_prefix_dir=`cpack_fix_slashes "${cpack_prefix_dir}"`
  fi
  if echo $a | grep "^--help" > /dev/null 2> /dev/null; then
    cpack_usage 
  fi
  if echo $a | grep "^--version" > /dev/null 2> /dev/null; then
    cpack_version 
    exit 2
  fi
  if echo $a | grep "^--include-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=TRUE
  fi
  if echo $a | grep "^--exclude-subdir" > /dev/null 2> /dev/null; then
    cpack_include_subdir=FALSE
  fi
  if echo $a | grep "^--skip-license" > /dev/null 2> /dev/null; then
    cpack_skip_license=TRUE
  fi
done

if [ "x${cpack_include_subdir}x" != "xx" -o "x${cpack_skip_license}x" = "xTRUEx" ]
then
  interactive=FALSE
fi

cpack_version
echo "This is a self-extracting archive."
toplevel="`pwd`"
if [ "x${cpack_prefix_dir}x" != "xx" ]
then
  toplevel="${cpack_prefix_dir}"
fi

echo "The archive will be extracted to: ${toplevel}"

if [ "x${interactive}x" = "xTRUEx" ]
then
  echo ""
  echo "If you want to stop extracting, please press <ctrl-C>."

  if [ "x${cpack_skip_license}x" != "xTRUEx" ]
  then
    more << '____cpack__here_doc____'
This is the open source License.txt file introduced in
CMake/Tests/Tutorial/Step6...

____cpack__here_doc____
    echo
    echo "Do you accept the license? [yN]: "
    read line leftover
    case ${line} in
      y* | Y*)
        cpack_license_accepted=TRUE;;
      *)
        echo "License not accepted. Exiting ..."
        exit 1;;
    esac
  fi

  if [ "x${cpack_include_subdir}x" = "xx" ]
  then
    echo "By default the Tutorial will be installed in:"
    echo "  \"${toplevel}/Tutorial-1.0.1-Linux\""
    echo "Do you want to include the subdirectory Tutorial-1.0.1-Linux?"
    echo "Saying no will install in: \"${toplevel}\" [Yn]: "
    read line leftover
    cpack_include_subdir=TRUE
    case ${line} in
      n* | N*)
        cpack_include_subdir=FALSE
    esac
  fi
fi

if [ "x${cpack_include_subdir}x" = "xTRUEx" ]
then
  toplevel="${toplevel}/Tutorial-1.0.1-Linux"
  mkdir -p "${toplevel}"
fi
echo
echo "Using target directory: ${toplevel}"
echo "Extracting, please wait..."
echo ""

# take the archive portion of this file and pipe it to tar
# the NUMERIC parameter in this command should be one more
# than the number of lines in this header file
# there are tails which don't understand the "-n" argument, e.g. on SunOS
# OTOH there are tails which complain when not using the "-n" argument (e.g. GNU)
# so at first try to tail some file to see if tail fails if used with "-n"
# if so, don't use "-n"
use_new_tail_syntax="-n"
tail $use_new_tail_syntax +1 "$0" > /dev/null 2> /dev/null || use_new_tail_syntax=""

tail $use_new_tail_syntax +144 "$0" | gunzip | (cd "${toplevel}" && tar xf -) || cpack_echo_exit "Problem unpacking the Tutorial-1.0.1-Linux"

echo "Unpacking finished successfully"

exit 0
#-----------------------------------------------------------
#      Start of TAR.GZ file
#-----------------------------------------------------------;

� ��U �mpT���MB6_�D���p"C6��M����aC��@��c�}��&�q�-?��:��j+��کc�1��q��`�g�ډ�v2"6|8�BmZ?���{��{7o-�v&'�w��{ι���{�GڻA��9�Dc�@Wm4
w�;�%��Q�v�c��QQY!:]�.���\���*���K�D&Hĕ@��F���]����(/�NYlW�=��b�G	G#q1	�qYQ����D6D���P8"��Z_Ӛ�U+�F�UM��<�+��#%в�'5�o�6���'��W���
(��n�'�ʢ�ۣ:��C�H��������D�޵>�a�rq~9����&������'!�1�tֱ��������Y�`��U�v���v�'���9�:S$2	�ZV�6�y�F�K�9:�$M�u�b���]1����ϑ#�pH,/���u��$C[8����[u�����2��w9]�J6�:�<�+**]���r���:� �h�j[�G�=��MM�xP5�����5h
�s4r���q0Ͱ��6��6Q����� ǰ��9�7���+�H�Sz�W��ǲI����&��	�JA��ǆ��ˆ�f�����2�[��'���$�{
(�S���% ��ӻ�MA6�MP_�v��b��CyW���]�,�
G�e��UeUn{<jw�>�@v��U��c	�<�1@ʷ,9��s�ϝ1oo���;���/y���A/��vl3�ُ�����g#)+;��>2�����;�j���p�/����(��7���ǟr��p��֙w<���;?�N{�S���go9��}��� =L�fe�O���'��W3����'ä]�m�T�����A	 >��=�[��E�1ϣ�%��ϫ�W�!N�G�g����X�X>����3`��2���������w�������������M��*߂����U�K�&������N�w�+�ȣ���PO,QBH�H�D�E��#��OH�FR}s��crG8�ȱ��ڮhDn���`@	 r��D�&:���-!�U���6Wav0�q9��׈�q3��qfi�f�	��
��r��e�����Z�ew�+��)�~&<�3��f�LbF8�h�z�Jۗ��8&<��_�\M5�,�T������^��G�	���*9�kT�+�úၒ�ob�伷��:˃Z�/�Ib��+B�W?9��/��|rP�_$4q��~L:?��?������������G�H�9ԣ�#d����Yg��b�%�-�22/�}���-���w�����)J�Xgm#������,,�����R�0�?:���/R�7����5���o���_�(n����cG6�����������n���u)���$���'�6���Xg��q���Ў�����#}��h�����w�p�;�Y�j� i���H�Q9�?�"�L��`уS
4����vz�*�7������%[�}Ø?����a<����V�oxt9����w=������q*�B$�S*KԊ?@zut�����a�~���u�`�j�����d�a.�v��-�2�:�S9���ox�t�X0���ߑ�*Y������nD$ic1�`�,e��c���[������qk�p�#����z��H��U��T���ƨ�-CD`�&?|C��-P�y2��;#��̳�
%ՎK	�q8d��zP�>����I����O�-��o{�v�۞%�!����57�p��<���Q�3l��똁��S��,�6�����;,��N�"���۽����P�³�an�T��1/.��c�p4"����QK<�!�$�H��M���NY�ߕ�d����hH��!�����ek��=	�R�JTl�������P<�T�&k19��uo��dr;�6��d�������sH]l��1�z0���xX�nBB�M��0׼[ȵ>9+��6�k�+cy��;��j"`��YJVX�����3ϯ�{=rF�a�F�k�=l�-�b:�-�r�g�`��3+ϺB D���uϯ��5�,%��|qg��R�H���xx��Rݗ�h�tY����RZck,%X��bV��7�_lG��O¥��D���;o��SW���0y�3 �@�L���_$��1Q{l�.͡tꮓEi6咀�}�W"=��
p`cj`6orO�o�G�����by\�xت��
�I�Y{�]
��=��:�׵�C�7s��/cKw�鹽O�����m���Oa}D�g������3?Z�kO������y���k����5JzP.���I,miKD���W��e��J9�w�����;Q�U�\�Tƅ�=��[	�a��(�d���^�� {$��voM}�� �#���%��"���;�=�5��Q��h�f���	��� �_=]
���܋��������)�b�nY���Ր�X`+�`��h��n����ꨢ>h-�"� {{��[��7�u�@�9�l>��:����=����	�EN>������
0�^@��W�������,3��#���JDמ��[pJ���_�F��kA����*d���6"����a�i��7q�ND�*F����Ed�?��mS����^�g�#�~�����z��7i��w�t�O��l��0�����w���Ws�6?�鳸�6�o�^R5z�r�l?}6�<N���i��,3��8y���q���#��p�|�/p��A?�O�,_� �'�H�L�x��<O�3�U���%�?�3}�ŋ�Ѿc��x1�Y�85>�q�W?���[�_?ç9}v�aT_@����{����E���b�,�3`ӹ��NB�|��7r|�\Z��q 9����ǯ�ڱ���p��w-�ȯ?y�E�������4�O�|Sj���R�����������~��OI�Cz~��y5�J�!?/�����u^ϟϥ��Ժ��O�#S��8/���z�-����ũ�Lϟ�Z���+R돞?-����W�ǳ�U�u@ϟ���:�ĸ<��z>�+�q��>��+�O��	��~������^����u������'�!�����	v<��'U���2��^����CjY1,���d�>(��S�s���T�S��\��K0'��ÿ�\����(�?q��	�����q�)&���C���a?��U�	�y���q�������^d��4��曌�dW���^sM�y/��8���d���a&�|ح&c���L��3�S�J"��#IZQ�$5ԯi�$�NeIJ��N�Fqd���`T�芶����ť@��gO���A{բ��BR�&+��il+�w�`��{+V�PR��
|�bo��E4_�����&o�O�\Fri���:#$s�G��@$H2r�֯�6����X�����YYް��� ���[�k���5>�K%iz��Ѧ�4�@�v�B��Z����$��M1B�����m��G��R9Hjp�k@��½���3pi�����
������U����r��%�X{�-���n���UQU]-���}�b��In"�rL G��f�I���-?�u')��AJ�u�5�P�aPs�����,�BR�����@$eIɥM�3���j}����H��IY��p�"�_5Cz�}
�2�$�̢�F�����X<�k��,
���4�|eK^C���TT����A��K������t:!"��d��q%�MPQ+�9z�G�d}�l'2��0�L-��qD�}�8������Ȑ��e�!c�E��+���oB��gA�O���_��X+��o�c�}�@"y�g��U�����b#b�n��H�1��3��d��f������%�U��ͣ�����g�{6�-%P��������#����H_��fk����m�ɸ�f%~��/ ��>��,I������h�5�?�%�$L�$L�W��=� >  