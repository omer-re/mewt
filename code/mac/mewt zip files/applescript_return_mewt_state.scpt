FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  m      
 
 �    1 	 o      ���� 0 
mewt_state  ��  ��        l     ��������  ��  ��        l    ����  r        m       �     A u d i o   M I D I   S e t u p  o      ���� 0 procname ProcName��  ��        l    ����  O       I   ������
�� .miscactvnull��� ��� null��  ��    4    �� 
�� 
capp  o   
 ���� 0 procname ProcName��  ��        l     ��������  ��  ��        l   - ����  W    -   !   I  # (�� "��
�� .sysodelanull��� ��� nmbr " m   # $ # # ?ə�������   ! =   " $ % $ n      & ' & 1     ��
�� 
pisf ' 4    �� (
�� 
capp ( o    ���� 0 procname ProcName % m     !��
�� boovtrue��  ��     ) * ) l     �� + ,��   +  	delay 0.1    , � - -  d e l a y   0 . 1 *  . / . l  .Y 0���� 0 O   .Y 1 2 1 O   2X 3 4 3 k   9W 5 5  6 7 6 W   9 ` 8 9 8 I  T [�� :��
�� .sysodelanull��� ��� nmbr : m   T W ; ; ?���������   9 I  = S�� <��
�� .coredoexnull���     **** < n   = O = > = 4   J O�� ?
�� 
crow ? m   M N����  > n   = J @ A @ 4   G J�� B
�� 
outl B m   H I����  A n   = G C D C 4   D G�� E
�� 
scra E m   E F����  D n   = D F G F 4   A D�� H
�� 
splg H m   B C����  G 4   = A�� I
�� 
cwin I m   ? @ J J � K K  A u d i o   D e v i c e s��   7  L M L l  a a��������  ��  ��   M  N O N r   a | P Q P I  a x�� R��
�� .corecnte****       **** R n   a t S T S 2  p t��
�� 
crow T n   a p U V U 4   m p�� W
�� 
outl W m   n o����  V n   a m X Y X 4   j m�� Z
�� 
scra Z m   k l����  Y n   a j [ \ [ 4   g j�� ]
�� 
splg ] m   h i����  \ 4   a g�� ^
�� 
cwin ^ m   c f _ _ � ` `  A u d i o   D e v i c e s��   Q o      ���� 0 rowcount RowCount O  a b a l  } }��������  ��  ��   b  c d c r   } � e f e m   } ~����  f o      ���� 0 i   d  g h g l  � ���������  ��  ��   h  i�� i V   �W j k j k   �R l l  m n m l  � ��� o p��   o   display dialog "start" & i    p � q q 4 d i s p l a y   d i a l o g   " s t a r t "   &   i n  r s r l  � ���������  ��  ��   s  t u t l  � ��� v w��   v ^ Xselect row i of outline 1 of scroll area 1 of splitter group 1 of window "Audio Devices"    w � x x � s e l e c t   r o w   i   o f   o u t l i n e   1   o f   s c r o l l   a r e a   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   " A u d i o   D e v i c e s " u  y z y l  � ��� { |��   { 	 try    | � } }  t r y z  ~  ~ l  � ��� � ���   � � �	click checkbox 1 of row 1 of table 1 of scroll area 1 of tab group 1 of group 1 of splitter group 1 of window "Audio Devices" of application process "Audio MIDI Setup" of application "System Events"    � � � �� 	 c l i c k   c h e c k b o x   1   o f   r o w   1   o f   t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   " A u d i o   D e v i c e s "   o f   a p p l i c a t i o n   p r o c e s s   " A u d i o   M I D I   S e t u p "   o f   a p p l i c a t i o n   " S y s t e m   E v e n t s "   � � � l  � ��� � ���   � � �set theCheckBox to checkbox 1 of row i of table 1 of scroll area 1 of tab group 1 of group 1 of splitter group 1 of window "Audio Devices" of application process "Audio MIDI Setup" of application "System Events"    � � � �� s e t   t h e C h e c k B o x   t o   c h e c k b o x   1   o f   r o w   i   o f   t a b l e   1   o f   s c r o l l   a r e a   1   o f   t a b   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   " A u d i o   D e v i c e s "   o f   a p p l i c a t i o n   p r o c e s s   " A u d i o   M I D I   S e t u p "   o f   a p p l i c a t i o n   " S y s t e m   E v e n t s " �  � � � l  � ��� � ���   �  tell theCheckBox    � � � �   t e l l   t h e C h e c k B o x �  � � � l  � ��� � ���   � < 6	set checkboxStatus to value of theCheckBox as boolean    � � � � l 	 s e t   c h e c k b o x S t a t u s   t o   v a l u e   o f   t h e C h e c k B o x   a s   b o o l e a n �  � � � l  � ��� � ���   � E ?	if checkboxStatus is mewt_state then display dialog "stop" & i    � � � � ~ 	 i f   c h e c k b o x S t a t u s   i s   m e w t _ s t a t e   t h e n   d i s p l a y   d i a l o g   " s t o p "   &   i �  � � � l  � ��� � ���   � < 6if checkboxStatus is mewt_state then click theCheckBox    � � � � l i f   c h e c k b o x S t a t u s   i s   m e w t _ s t a t e   t h e n   c l i c k   t h e C h e c k B o x �  � � � l  � ��� � ���   �  click theCheckBox    � � � � " c l i c k   t h e C h e c k B o x �  � � � l  � ��� � ���   �  end tell    � � � �  e n d   t e l l �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �  end try    � � � �  e n d   t r y �  � � � I  � ��� ���
�� .miscslctnull���     uiel � n   � � � � � 4   � ��� �
�� 
crow � o   � ����� 0 i   � n   � � � � � 4   � ��� �
�� 
outl � m   � �����  � n   � � � � � 4   � ��� �
�� 
scra � m   � �����  � n   � � � � � 4   � ��� �
�� 
splg � m   � �����  � 4   � ��� �
�� 
cwin � m   � � � � � � �  A u d i o   D e v i c e s��   �  � � � l  � ���������  ��  ��   �  � � � l  � � � � � � r   � � � � � n   � � � � � 4   � ��� �
�� 
radB � m   � � � � � � � 
 I n p u t � n   � � � � � 4   � ��� �
�� 
tabg � m   � �����  � n   � � � � � 4   � ��� �
�� 
sgrp � m   � �����  � n   � � � � � 4   � ��� �
�� 
splg � m   � �����  � n   � � � � � 4   � ��� �
�� 
cwin � m   � � � � � � �  A u d i o   D e v i c e s � n   � � � � � 4   � ��� �
�� 
pcap � m   � � � � � � �   A u d i o   M I D I   S e t u p � m   � � � ��                                                                                  sevs  alis    �  Macintosh HD               �d�jH+   ��System Events.app                                               ����(]        ����  	                CoreServices    �e
�      ���     �� �� ��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   � o      ����  0 theradiobutton theRadioButton � < 6if checkboxStatus is mewt_state then click theCheckBox    � � � � l i f   c h e c k b o x S t a t u s   i s   m e w t _ s t a t e   t h e n   c l i c k   t h e C h e c k B o x �  � � � r   � � � � � c   � � � � � n   � � � � � 1   � ���
�� 
valL � o   � �����  0 theradiobutton theRadioButton � m   � ���
�� 
TEXT � o      ���� "0 radiobuttonname RadioButtonName �  � � � l  � ��� � ���   � . (display dialog "input" & RadioButtonName    � � � � P d i s p l a y   d i a l o g   " i n p u t "   &   R a d i o B u t t o n N a m e �  � � � Z   �F � ����� � l  � � ����� � =   � � � � � o   � ����� "0 radiobuttonname RadioButtonName � m   � � � � � � �  1��  ��   � k   �B � �  � � � l  � ��� � ���   � ' !display dialog "this is an input"    � � � � B d i s p l a y   d i a l o g   " t h i s   i s   a n   i n p u t " �  � � � r   �   n   � 4  ��
�� 
chbx m  ����  n   � 4  ��
�� 
crow m  ����  n   �	 4  	��

�� 
tabB
 m  ���� 	 n   �	 4  	��
�� 
scra m  ����  n   � 4  �
� 
tabg m  �~�~  n   � 4   ��}
�} 
sgrp m   � �|�|  n   � � 4   � ��{
�{ 
splg m   � ��z�z  n   � � 4   � ��y
�y 
cwin m   � � �  A u d i o   D e v i c e s n   � � 4   � ��x
�x 
pcap m   � � �     A u d i o   M I D I   S e t u p m   � �!!�                                                                                  sevs  alis    �  Macintosh HD               �d�jH+   ��System Events.app                                               ����(]        ����  	                CoreServices    �e
�      ���     �� �� ��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   o      �w�w 0 thecheckbox theCheckBox � "#" r  ,$%$ c  (&'& n  $()( 1   $�v
�v 
valL) o   �u�u 0 thecheckbox theCheckBox' m  $'�t
�t 
bool% o      �s�s  0 checkboxstatus checkboxStatus# *+* Z  -@,-�r�q, l -2.�p�o. =  -2/0/ o  -0�n�n  0 checkboxstatus checkboxStatus0 m  01�m
�m boovfals�p  �o  - k  5<11 232 l 55�l45�l  4 2 ,display dialog "before check: " & mewt_state   5 �66 X d i s p l a y   d i a l o g   " b e f o r e   c h e c k :   "   &   m e w t _ s t a t e3 787 r  5:9:9 m  58;; �<<  0: o      �k�k 0 
mewt_state  8 =�j= l ;;�i>?�i  > 1 +display dialog "after check: " & mewt_state   ? �@@ V d i s p l a y   d i a l o g   " a f t e r   c h e c k :   "   &   m e w t _ s t a t e�j  �r  �q  + ABA l AA�hCD�h  C 5 /display dialog "theCheckBox" & (checkboxStatus)   D �EE ^ d i s p l a y   d i a l o g   " t h e C h e c k B o x "   &   ( c h e c k b o x S t a t u s )B FGF l AA�gHI�g  H 1 +display dialog "mewt_state:" & (mewt_state)   I �JJ V d i s p l a y   d i a l o g   " m e w t _ s t a t e : "   &   ( m e w t _ s t a t e )G K�fK l AA�e�d�c�e  �d  �c  �f  ��  ��   � LML l GG�bNO�b  N � �set theRadioButton to radio button "Output" of tab group 1 of group 1 of splitter group 1 of window "Audio Devices" of application process "Audio MIDI Setup" of application "System Events" --if checkboxStatus is mewt_state then click theCheckBox   O �PP� s e t   t h e R a d i o B u t t o n   t o   r a d i o   b u t t o n   " O u t p u t "   o f   t a b   g r o u p   1   o f   g r o u p   1   o f   s p l i t t e r   g r o u p   1   o f   w i n d o w   " A u d i o   D e v i c e s "   o f   a p p l i c a t i o n   p r o c e s s   " A u d i o   M I D I   S e t u p "   o f   a p p l i c a t i o n   " S y s t e m   E v e n t s "   - - i f   c h e c k b o x S t a t u s   i s   m e w t _ s t a t e   t h e n   c l i c k   t h e C h e c k B o xM QRQ l GG�aST�a  S > 8set RadioButtonName to value of theRadioButton as string   T �UU p s e t   R a d i o B u t t o n N a m e   t o   v a l u e   o f   t h e R a d i o B u t t o n   a s   s t r i n gR VWV l GG�`XY�`  X / )display dialog "output" & RadioButtonName   Y �ZZ R d i s p l a y   d i a l o g   " o u t p u t "   &   R a d i o B u t t o n N a m eW [\[ l GG�_�^�]�_  �^  �]  \ ]^] l GG�\�[�Z�\  �[  �Z  ^ _`_ l GG�Y�X�W�Y  �X  �W  ` aba l GG�Vcd�V  c  theCheckBox   d �ee  t h e C h e c k B o xb fgf l GG�Uhi�U  h # display dialog checkboxStatus   i �jj : d i s p l a y   d i a l o g   c h e c k b o x S t a t u sg klk l GG�Tmn�T  m  end tell   n �oo  e n d   t e l ll pqp l GG�S�R�Q�S  �R  �Q  q rsr r  GPtut [  GLvwv o  GJ�P�P 0 i  w m  JK�O�O u o      �N�N 0 i  s x�Mx l QQ�L�K�J�L  �K  �J  �M   k A   � �yzy o   � ��I�I 0 i  z [   � �{|{ o   � ��H�H 0 rowcount RowCount| m   � ��G�G ��   4 4   2 6�F}
�F 
prcs} o   4 5�E�E 0 procname ProcName 2 m   . /~~�                                                                                  sevs  alis    �  Macintosh HD               �d�jH+   ��System Events.app                                               ����(]        ����  	                CoreServices    �e
�      ���     �� �� ��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  ��   / � l     �D�C�B�D  �C  �B  � ��� l Zg��A�@� O Zg��� I af�?�>�=
�? .aevtquitnull��� ��� null�>  �=  � 4  Z^�<�
�< 
capp� o  \]�;�; 0 procname ProcName�A  �@  � ��:� l hj��9�8� L  hj�� o  hi�7�7 0 
mewt_state  �9  �8  �:       �6�� 
 �5�4����3�2�1�0�/�.�-�,�6  � �+�*�)�(�'�&�%�$�#�"�!� ����
�+ .aevtoappnull  �   � ****�* 0 
mewt_state  �) 0 procname ProcName�( 0 rowcount RowCount�' 0 i  �&  0 theradiobutton theRadioButton�% "0 radiobuttonname RadioButtonName�$ 0 thecheckbox theCheckBox�#  0 checkboxstatus checkboxStatus�"  �!  �   �  �  �  �  � �������
� .aevtoappnull  �   � ****� k    j��  ��  ��  ��  ��  .�� ��� ���  �  �  �  � . 
� ���� #�~�� J�����
 ; _�	�� ��� � ���� ��� ���� �����������;��� 0 
mewt_state  � 0 procname ProcName
� 
capp
� .miscactvnull��� ��� null
� 
pisf
� .sysodelanull��� ��� nmbr
� 
prcs
� 
cwin
� 
splg
� 
scra
� 
outl
� 
crow
�
 .coredoexnull���     ****
�	 .corecnte****       ****� 0 rowcount RowCount� 0 i  
� .miscslctnull���     uiel
� 
pcap
� 
sgrp
� 
tabg
� 
radB�  0 theradiobutton theRadioButton
�  
valL
�� 
TEXT�� "0 radiobuttonname RadioButtonName
�� 
tabB
�� 
chbx�� 0 thecheckbox theCheckBox
�� 
bool��  0 checkboxstatus checkboxStatus
�� .aevtquitnull��� ��� null�k�E�O�E�O*��/ *j UO h*��/�,e �j [OY��O�(*��/  &h*��/�k/�k/�k/a k/j a j [OY��O*�a /�k/�k/�k/a -j E` OkE` O �h_ _ k*�a /�k/�k/�k/a _ /j O�a a /�a /�k/a k/a k/a a /E`  O_  a !,a "&E` #O_ #a $  [�a a %/�a &/�k/a k/a k/�k/a 'k/a k/a (k/E` )O_ )a !,a *&E` +O_ +f  a ,E�OPY hOPY hO_ kE` OP[OY�2UUO*��/ *j -UO��5 �4 � �� ����� ������ ������ ������ ����� ~���
�� 
pcap� ���   A u d i o   M I D I   S e t u p
�� 
cwin� ���  A u d i o   D e v i c e s
�� 
splg�� 
�� 
sgrp�� 
�� 
tabg�� 
�� 
radB� ��� 
 I n p u t� ���  1� �� ������ ������ ������ ������ ������ ������ ������ ����� ~���
�� 
pcap� ���   A u d i o   M I D I   S e t u p
�� 
cwin� ���  A u d i o   D e v i c e s
�� 
splg�� 
�� 
sgrp�� 
�� 
tabg�� 
�� 
scra�� 
�� 
tabB�� 
�� 
crow�� 
�� 
chbx�� 
�3 boovtrue�2  �1  �0  �/  �.  �-  �,   ascr  ��ޭ