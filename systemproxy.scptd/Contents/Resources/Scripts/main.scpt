FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �Jason Campipsi
   name: SystemProxy
   version: v0.3
   date: 4.28.11
   Realsed under the GPL 3
   Purpose: to make switching the system-wide socks-proxy setting On or Off quick and easy

  Reference: #http://peter.upfold.org.uk/blog/2008/10/10/applescript-to-enable-socks-proxy-on-mac-os-x/
    -setsocksfirewallproxy � tells networksetup to turn the proxy on, with the following settings
  Ethernet � the identifier of the network service to change the settings for (e.g. AirPort, Ethernet). 
	Use networksetup -listallnetworkservices to see all valid values.
	127.0.0.1 � the address of the SOCKS proxy. In our case, SSH creates the proxy on the local system, so 127.0.0.1.
	8080 � the port of the SOCKS proxy. This is the -D argument in your SSH command.
	off � this is for authentication. The SSH SOCKS system doesn�t need authentication and only runs on loopback, 
		so we leave it off. If you�re using a different SOCKS system, you may need this 
		(and also give the username and password as arguments after it).
     � 	 	� J a s o n   C a m p i p s i 
       n a m e :   S y s t e m P r o x y 
       v e r s i o n :   v 0 . 3 
       d a t e :   4 . 2 8 . 1 1 
       R e a l s e d   u n d e r   t h e   G P L   3 
       P u r p o s e :   t o   m a k e   s w i t c h i n g   t h e   s y s t e m - w i d e   s o c k s - p r o x y   s e t t i n g   O n   o r   O f f   q u i c k   a n d   e a s y 
 
     R e f e r e n c e :   # h t t p : / / p e t e r . u p f o l d . o r g . u k / b l o g / 2 0 0 8 / 1 0 / 1 0 / a p p l e s c r i p t - t o - e n a b l e - s o c k s - p r o x y - o n - m a c - o s - x / 
         - s e t s o c k s f i r e w a l l p r o x y      t e l l s   n e t w o r k s e t u p   t o   t u r n   t h e   p r o x y   o n ,   w i t h   t h e   f o l l o w i n g   s e t t i n g s 
     E t h e r n e t      t h e   i d e n t i f i e r   o f   t h e   n e t w o r k   s e r v i c e   t o   c h a n g e   t h e   s e t t i n g s   f o r   ( e . g .   A i r P o r t ,   E t h e r n e t ) .   
 	 U s e   n e t w o r k s e t u p   - l i s t a l l n e t w o r k s e r v i c e s   t o   s e e   a l l   v a l i d   v a l u e s . 
 	 1 2 7 . 0 . 0 . 1      t h e   a d d r e s s   o f   t h e   S O C K S   p r o x y .   I n   o u r   c a s e ,   S S H   c r e a t e s   t h e   p r o x y   o n   t h e   l o c a l   s y s t e m ,   s o   1 2 7 . 0 . 0 . 1 . 
 	 8 0 8 0      t h e   p o r t   o f   t h e   S O C K S   p r o x y .   T h i s   i s   t h e   - D   a r g u m e n t   i n   y o u r   S S H   c o m m a n d . 
 	 o f f      t h i s   i s   f o r   a u t h e n t i c a t i o n .   T h e   S S H   S O C K S   s y s t e m   d o e s n  t   n e e d   a u t h e n t i c a t i o n   a n d   o n l y   r u n s   o n   l o o p b a c k ,   
 	 	 s o   w e   l e a v e   i t   o f f .   I f   y o u  r e   u s i n g   a   d i f f e r e n t   S O C K S   s y s t e m ,   y o u   m a y   n e e d   t h i s   
 	 	 ( a n d   a l s o   g i v e   t h e   u s e r n a m e   a n d   p a s s w o r d   a s   a r g u m e n t s   a f t e r   i t ) . 
   
  
 l     ��������  ��  ��        j     �� �� 0 program    m        �    S y s t e m P r o x y      j    �� 
�� 
ppor  m       �    8 0 8 0      j    �� 
�� 
HOST  m       �    1 2 7 . 0 . 0 . 1      j   	 �� �� 0 	countdown    m   	 
   �    3 8     !   j    �� "�� 0 title Title " b     # $ # o    ���� 0 program   $ m     % % � & & 2 :   S e t u p   S O C K S   i n   s e c o n d s ! !  ' ( ' l     ��������  ��  ��   (  ) * ) i     + , + I      �� -���� 0 checkip checkIP -  .�� . o      ���� 0 address  ��  ��   , k     / /  0 1 0 Z      2 3���� 2 =     4 5 4 o     ���� 0 address   5 m     6 6 � 7 7  l o c a l h o s t 3 L     8 8 m     9 9 � : :  t r u e��  ��   1  ; < ; l   ��������  ��  ��   <  = > = r     ? @ ? b     A B A o    ���� 0 address   B m     C C � D D :   i s   n o t   a   p r o p p e r   I P   A d d r e s s . @ o      ���� 0 badans badAns >  E F E r     G H G n    I J I 1    ��
�� 
txdl J 1    ��
�� 
ascr H o      ���� 0 astd ASTD F  K L K r     M N M m     O O � P P  . N n      Q R Q 1    ��
�� 
txdl R 1    ��
�� 
ascr L  S T S r    $ U V U n    " W X W 2    "��
�� 
citm X o     ���� 0 address   V o      ���� 
0 blocks   T  Y Z Y Z   % C [ \���� [ >  % , ] ^ ] l  % * _���� _ I  % *�� `��
�� .corecnte****       **** ` o   % &���� 
0 blocks  ��  ��  ��   ^ m   * +����  \ k   / ? a a  b c b I  / <�� d e
�� .sysodlogaskr        TEXT d o   / 0���� 0 badans badAns e �� f��
�� 
appr f b   1 8 g h g o   1 6���� 0 program   h m   6 7 i i � j j . :   p o o r l y   f o r m e d   a d d r e s s��   c  k�� k L   = ? l l m   = > m m � n n 
 f a l s e��  ��  ��   Z  o p o l  D I q r s q r   D I t u t o   D E���� 0 astd ASTD u n      v w v 1   F H��
�� 
txdl w 1   E F��
�� 
ascr r  reset    s � x x 
 r e s e t p  y z y Y   J � {�� | }�� { k   T � ~ ~   �  Q   T � � � � � l  W ] � � � � c   W ] � � � l  W [ ����� � n   W [ � � � 4   X [�� �
�� 
cobj � o   Y Z���� 0 k   � o   W X���� 
0 blocks  ��  ��   � m   [ \��
�� 
nmbr � 0 *test the ip-block if it is a number or not    � � � � T t e s t   t h e   i p - b l o c k   i f   i t   i s   a   n u m b e r   o r   n o t � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errstr errStr��   � k   e � � �  � � � r   e � � � � b   e � � � � b   e  � � � b   e { � � � b   e w � � � b   e s � � � b   e n � � � b   e j � � � o   e f���� 0 badans badAns � o   f i��
�� 
ret  � o   j m��
�� 
ret  � l  n r ����� � n   n r � � � 4   o r�� �
�� 
cobj � o   p q���� 0 k   � o   n o���� 
0 blocks  ��  ��   � m   s v � � � � � "   i s   n o t   a   n u m b e r . � o   w z��
�� 
ret  � o   { ~��
�� 
ret  � m    � � � � � � : U s e   n u m b e r s   b e t w e e n   0   a n d   2 5 5 � o      ���� 0 msg   �  ��� �  S   � ���   �  � � � l  � ���������  ��  ��   �  ��� � O  � � � � � Z   � � � ��� � � F   � � � � � @   � � � � �  g   � � � m   � �����   � A   � � � � �  g   � � � m   � �����  � l  � � � � � � r   � � � � � m   � � � � � � �  t r u e � o      ���� 0 msg   � # is the ip block range 0->255?    � � � � : i s   t h e   i p   b l o c k   r a n g e   0 - > 2 5 5 ?��   � k   � � � �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � o   � ����� 0 badans badAns � o   � ���
�� 
ret  � o   � ���
�� 
ret  � m   � � � � � � �  B l o c k   # � o   � ����� 0 k   � m   � � � � � � �  :   �  g   � � � m   � � � � � � �     i s   o u t   o f   r a n g e � o   � ���
�� 
ret  � o   � ���
�� 
ret  � m   � � � � � � � : U s e   n u m b e r s   b e t w e e n   0   a n d   2 5 5 � o      ���� 0 msg   �  ��� �  S   � ���   � c   � � � � � n   � � � � � 4   � ��� �
�� 
cobj � o   � ����� 0 k   � o   � ����� 
0 blocks   � m   � ���
�� 
nmbr��  �� 0 k   | m   M N����  } m   N O���� ��   z  � � � l  � ���������  ��  ��   �  � � � Z   � � ��� � � =  � � � � � o   � ����� 0 msg   � m   � � � � � � �  t r u e � L   � � � � m   � � � � � � �  t r u e��   � Q   � � � � � I  ��� � �
�� .sysodlogaskr        TEXT � o   � ����� 0 msg   � �� � �
�� 
appr � b   � � � � � o   � ����� 0 program   � m   � � � � �   0 :   U n u s a b l e   A d d r e s s   G i v e n � ����
�� 
givu o   � ���� 0 	countdown  ��   � R      ����
�� .ascrerr ****      � **** o      ���� 0 strerror StrError��   � L   m  ��
�� 
null � �� L   m   � 
 f a l s e��   * 	 l     ��������  ��  ��  	 

 i     I      �������� 0 getip getIP��  ��   k     >  Q     . l   $ k    $  r     I   ��
�� .sysodlogaskr        TEXT m     �  P r o x y   A d d r e s s : �� !
�� 
dtxt  1    ��
�� 
HOST! ��"#
�� 
dflt" m   	 
$$ �%%  O k# ��&'
�� 
appr& o    ���� 0 title Title' ��(��
�� 
givu( o    ���� 0 	countdown  ��   o      �� 0 	bttnpress 	bttnPress )�~) r    $*+* c    ",-, n     ./. 1     �}
�} 
ttxt/ 1    �|
�| 
rslt- m     !�{
�{ 
TEXT+ o      �z�z 0 address  �~    get proxy address    �00 " g e t   p r o x y   a d d r e s s R      �y�x�w
�y .ascrerr ****      � ****�x  �w   L   , .11 m   , -�v
�v 
null 232 Z   / ;45�u�t4 =  / 2676 o   / 0�s�s 0 	bttnpress 	bttnPress7 m   0 188 �99  C a n c e l5 L   5 7:: m   5 6�r
�r 
null�u  �t  3 ;�q; L   < ><< o   < =�p�p 0 address  �q   =>= l     �o�n�m�o  �n  �m  > ?@? i    ABA I     �l�k�j
�l .aevtoappnull  �   � ****�k  �j  B k    ZCC DED r     FGF J     HH IJI m     KK �LL  C a n c e lJ MNM m    OO �PP  O nN Q�iQ m    RR �SS  O f f�i  G o      �h�h 0 buttonchoices buttonChoicesE TUT l   VWXV r    YZY m    	[[ �\\ j n e t w o r k s e t u p   - s e t s o c k s f i r e w a l l p r o x y s t a t e   E t h e r n e t   o f fZ o      �g�g 0 cmd  W $ assume the proxy should be off   X �]] < a s s u m e   t h e   p r o x y   s h o u l d   b e   o f fU ^_^ Q    2`ab` r    (cdc n    &efe 1   $ &�f
�f 
bhitf l   $g�e�dg I   $�chi
�c .sysodlogaskr        TEXTh m    jj �kk B T u r n   S y s t e m   S o c k   P r o x y   O n   o r   O f f ?i �blm
�b 
btnsl o    �a�a 0 buttonchoices buttonChoicesm �`no
�` 
dfltn m    pp �qq  C a n c e lo �_rs
�_ 
apprr o    �^�^ 0 title Titles �]t�\
�] 
givut o     �[�[ 0 	countdown  �\  �e  �d  d o      �Z�Z 0 r  a R      �Yu�X
�Y .ascrerr ****      � ****u o      �W�W 0 strerror StrError�X  b L   0 2�V�V  _ vwv l  3 3�U�T�S�U  �T  �S  w xyx Z   3Bz{|�Rz =  3 8}~} o   3 4�Q�Q 0 r  ~ m   4 7 ���  C a n c e l{ l  ; =���� L   ; =�P�P  �  exit?   � ��� 
 e x i t ?| ��� =  @ E��� o   @ A�O�O 0 r  � m   A D�� ���  O n� ��N� l  H>���� k   H>�� ��� T   H ��� l  M ����� k   M ��� ��� r   M V��� I   M R�M�L�K�M 0 getip getIP�L  �K  � o      �J�J 0 hostname hostName� ��� l  W W�I���I  � E ?display dialog "hostname is this: " & hostName with title Title   � ��� ~ d i s p l a y   d i a l o g   " h o s t n a m e   i s   t h i s :   "   &   h o s t N a m e   w i t h   t i t l e   T i t l e� ��� Z   W g���H�G� =  W ^��� o   W Z�F�F 0 hostname hostName� m   Z ]�E
�E 
null� l  a c���� L   a c�D�D  �    cancel was selected, quit   � ��� 4   c a n c e l   w a s   s e l e c t e d ,   q u i t�H  �G  � ��� l  h h�C�B�A�C  �B  �A  � ��� l  h r���� r   h r��� I   h p�@��?�@ 0 checkip checkIP� ��>� o   i l�=�= 0 hostname hostName�>  �?  � o      �<�< 0 r  � $ is ip address in a valid form?   � ��� < i s   i p   a d d r e s s   i n   a   v a l i d   f o r m ?� ��;� Z   s �����:� =  s x��� o   s t�9�9 0 r  � m   t w�8
�8 
null� l  { }���� L   { }�7�7  �    cancel was selected, quit   � ��� 4   c a n c e l   w a s   s e l e c t e d ,   q u i t� ��� =  � ���� o   � ��6�6 0 r  � m   � ��� ���  t r u e� ��5�  S   � ��5  �:  �;  �  get the hostname   � ���   g e t   t h e   h o s t n a m e� ��� l  � ��4�3�2�4  �3  �2  � ��� T   ��� l  ����� Q   ����� k   � ��� ��� r   � ���� I  � ��1��
�1 .sysodlogaskr        TEXT� m   � ��� ��� 6 P l e a s e   e n t e r   a   p o r t   n u m b e r :� �0��
�0 
dtxt� 1   � ��/
�/ 
ppor� �.��
�. 
dflt� m   � ��� ���  O k� �-��
�- 
appr� o   � ��,�, 0 title Title� �+��*
�+ 
givu� o   � ��)�) 0 	countdown  �*  � o      �(�( 0 r  � ��� l  � ����� r   � ���� I  � ��'��&
�' .sysorondlong        doub� l  � ���%�$� c   � ���� n   � ���� 1   � ��#
�# 
ttxt� 1   � ��"
�" 
rslt� m   � ��!
�! 
nmbr�%  �$  �&  � o      � �  0 
portnumber 
portNumber� % the port must be a whole number   � ��� > t h e   p o r t   m u s t   b e   a   w h o l e   n u m b e r� ��� Z   � ������ ?   � ���� o   � ��� 0 
portnumber 
portNumber� m   � ���  � l  � �����  S   � �� &  valid port # must be 1 or higher   � ��� @ v a l i d   p o r t   #   m u s t   b e   1   o r   h i g h e r�  �  �  � R      ���
� .ascrerr ****      � ****� o      �� 0 strerror StrError�  � Q   ����� I  �� 
� .sysodlogaskr        TEXT  b   � � m   � � � , T h i s   i s   n o t   a   n u m b e r :   n   � � 1   � ��
� 
ttxt 1   � ��
� 
rslt ��
� 
appr b   � �	
	 o   � ��� 0 program  
 m   � � � J   E r r o r :   p o s i t i v e   n u m b e r   m u s t   b e   g i v e n�  � R      ��
� .ascrerr ****      � **** o      �� 0 strerror StrError�  � L  
��  � &  get port to bind the service too   � � @ g e t   p o r t   t o   b i n d   t h e   s e r v i c e   t o o�  Z   �� =  o  �� 0 r   m   �  C a n c e l l  L  �
�
    exit?    � 
 e x i t ?�  �   �	 r  !> b  !< b  !8 !  b  !4"#" b  !0$%$ b  !,&'& b  !(()( m  !$** �++ X n e t w o r k s e t u p   - s e t s o c k s f i r e w a l l p r o x y   E t h e r n e t) 1  $'�
� 
spac' o  (+�� 0 hostname hostName% 1  ,/�
� 
spac# o  03�� 0 
portnumber 
portNumber! 1  47�
� 
spac m  8;,, �--  o f f o      �� 0 cmd  �	  �   turn the proxy on?   � �.. &   t u r n   t h e   p r o x y   o n ?�N  �R  y /0/ l CC��� �  �  �   0 1��1 Q  CZ2342 l FK5675 I FK��8��
�� .sysoexecTEXT���     TEXT8 o  FG���� 0 cmd  ��  6 , &change the system socks proxy settings   7 �99 L c h a n g e   t h e   s y s t e m   s o c k s   p r o x y   s e t t i n g s3 R      ��:��
�� .ascrerr ****      � ****: o      ���� 0 strerror StrError��  4 I SZ��;��
�� .sysottosnull���     TEXT; m  SV<< �== � S y s t e m P r o x y   E r r o r :   c h a n g i n g   t h e   s e t t i n g   k n o w n   a s   ' n e t w o r k s e t u p   - s e t s o c k s f i r e w a l l p r o x y   E t h e r n e t ' !��  ��  @ >��> l     ��������  ��  ��  ��       
��?    @ABC��  ? ������������������ 0 program  
�� 
ppor
�� 
HOST�� 0 	countdown  �� 0 title Title�� 0 checkip checkIP�� 0 getip getIP
�� .aevtoappnull  �   � ****@ �DD H S y s t e m P r o x y :   S e t u p   S O C K S   i n   s e c o n d s !A �� ,����EF���� 0 checkip checkIP�� ��G�� G  ���� 0 address  ��  E ������������������ 0 address  �� 0 badans badAns�� 0 astd ASTD�� 
0 blocks  �� 0 k  �� 0 errstr errStr�� 0 msg  �� 0 strerror StrErrorF " 6 9 C���� O�������� i�� m���������� � ����� � � � � � � � �������
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****�� 
�� 
appr
�� .sysodlogaskr        TEXT
�� 
cobj
�� 
nmbr�� 0 errstr errStr��  
�� 
ret �� 
�� 
bool
�� 
givu�� 0 strerror StrError
�� 
null����  �Y hO��%E�O��,E�O���,FO��-E�O�j � ��b   �%l O�Y hO���,FO �k�kh  ���/�&W )X  �_ %_ %���/%a %_ %_ %a %E�OO���/�& E*j	 *a a & 
a E�Y +�_ %_ %a %�%a %*%a %_ %_ %a %E�OU[OY�yO�a   	a Y ( ��b   a %a b  � W X  a  Oa !B ������HI���� 0 getip getIP��  ��  H ������ 0 	bttnpress 	bttnPress�� 0 address  I ������$��������������������8
�� 
dtxt
�� 
HOST
�� 
dflt
�� 
appr
�� 
givu�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
ttxt
�� 
TEXT��  ��  
�� 
null�� ? &��*�,���b  �b  � E�O��,�&E�W 	X  �O��  �Y hO�C ��B����JK��
�� .aevtoappnull  �   � ****��  ��  J ���� 0 strerror StrErrorK +KOR��[��j����p������������������������������������������*��,��<���� 0 buttonchoices buttonChoices�� 0 cmd  
�� 
btns
�� 
dflt
�� 
appr
�� 
givu�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 r  �� 0 strerror StrError��  �� 0 getip getIP�� 0 hostname hostName
�� 
null�� 0 checkip checkIP
�� 
dtxt
�� 
ppor
�� 
rslt
�� 
ttxt
�� 
nmbr
�� .sysorondlong        doub�� 0 
portnumber 
portNumber
�� 
spac
�� .sysoexecTEXT���     TEXT
�� .sysottosnull���     TEXT��[���mvE�O�E�O ������b  �b  � �,E�W 	X  hO�a   hY�a   � IhZ*j+ E` O_ a   hY hO*_ k+ E�O�a   hY �a   Y h[OY��O }hZ Ha a *a ,�a �b  �b  � E�O_ a ,a &j  E` !O_ !j Y hW -X   a "_ a ,%�b   a #%l W 	X  h[OY��O�a $  hY hOa %_ &%_ %_ &%_ !%_ &%a '%E�Y hO 
�j (W X  a )j *ascr  ��ޭ