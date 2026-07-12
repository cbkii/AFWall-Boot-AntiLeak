.class public Lorg/xbill/DNS/WKSRecord$Protocol;
.super Ljava/lang/Object;
.source "WKSRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/WKSRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final ARGUS:I = 0xd

.field public static final BBN_RCC_MON:I = 0xa

.field public static final BR_SAT_MON:I = 0x4c

.field public static final CFTP:I = 0x3e

.field public static final CHAOS:I = 0x10

.field public static final DCN_MEAS:I = 0x13

.field public static final EGP:I = 0x8

.field public static final EMCON:I = 0xe

.field public static final GGP:I = 0x3

.field public static final HMP:I = 0x14

.field public static final ICMP:I = 0x1

.field public static final IGMP:I = 0x2

.field public static final IGP:I = 0x9

.field public static final IPCV:I = 0x47

.field public static final IPPC:I = 0x43

.field public static final IRTP:I = 0x1c

.field public static final ISO_TP4:I = 0x1d

.field public static final LEAF_1:I = 0x19

.field public static final LEAF_2:I = 0x1a

.field public static final MERIT_INP:I = 0x20

.field public static final MFE_NSP:I = 0x1f

.field public static final MIT_SUBNET:I = 0x41

.field public static final MUX:I = 0x12

.field public static final NETBLT:I = 0x1e

.field public static final NVP_II:I = 0xb

.field public static final PRM:I = 0x15

.field public static final PUP:I = 0xc

.field public static final RDP:I = 0x1b

.field public static final RVD:I = 0x42

.field public static final SAT_EXPAK:I = 0x40

.field public static final SAT_MON:I = 0x45

.field public static final SEP:I = 0x21

.field public static final ST:I = 0x5

.field public static final TCP:I = 0x6

.field public static final TRUNK_1:I = 0x17

.field public static final TRUNK_2:I = 0x18

.field public static final UCL:I = 0x7

.field public static final UDP:I = 0x11

.field public static final WB_EXPAK:I = 0x4f

.field public static final WB_MON:I = 0x4e

.field public static final XNET:I = 0xf

.field public static final XNS_IDP:I = 0x16

.field private static final protocols:Lorg/xbill/DNS/Mnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 156
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "IP protocol"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    const/16 v1, 0xff

    .line 159
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setNumericAllowed(Z)V

    const-string v3, "icmp"

    .line 162
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v3, "igmp"

    .line 163
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "ggp"

    .line 164
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "st"

    .line 165
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "tcp"

    .line 166
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x7

    const-string v2, "ucl"

    .line 167
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "egp"

    .line 168
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x9

    const-string v2, "igp"

    .line 169
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xa

    const-string v2, "bbn-rcc-mon"

    .line 170
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xb

    const-string v2, "nvp-ii"

    .line 171
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xc

    const-string v2, "pup"

    .line 172
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xd

    const-string v2, "argus"

    .line 173
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xe

    const-string v2, "emcon"

    .line 174
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xf

    const-string v2, "xnet"

    .line 175
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "chaos"

    .line 176
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x11

    const-string v2, "udp"

    .line 177
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x12

    const-string v2, "mux"

    .line 178
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x13

    const-string v2, "dcn-meas"

    .line 179
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x14

    const-string v2, "hmp"

    .line 180
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x15

    const-string v2, "prm"

    .line 181
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x16

    const-string v2, "xns-idp"

    .line 182
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x17

    const-string v2, "trunk-1"

    .line 183
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x18

    const-string v2, "trunk-2"

    .line 184
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x19

    const-string v2, "leaf-1"

    .line 185
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1a

    const-string v2, "leaf-2"

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1b

    const-string v2, "rdp"

    .line 187
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1c

    const-string v2, "irtp"

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1d

    const-string v2, "iso-tp4"

    .line 189
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1e

    const-string v2, "netblt"

    .line 190
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1f

    const-string v2, "mfe-nsp"

    .line 191
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "merit-inp"

    .line 192
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x21

    const-string v2, "sep"

    .line 193
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x3e

    const-string v2, "cftp"

    .line 194
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x40

    const-string v2, "sat-expak"

    .line 195
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x41

    const-string v2, "mit-subnet"

    .line 196
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x42

    const-string v2, "rvd"

    .line 197
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x43

    const-string v2, "ippc"

    .line 198
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x45

    const-string v2, "sat-mon"

    .line 199
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x47

    const-string v2, "ipcv"

    .line 200
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x4c

    const-string v2, "br-sat-mon"

    .line 201
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x4e

    const-string v2, "wb-mon"

    .line 202
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x4f

    const-string v2, "wb-expak"

    .line 203
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 208
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/WKSRecord$Protocol;->protocols:Lorg/xbill/DNS/Mnemonic;

    .line 219
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
