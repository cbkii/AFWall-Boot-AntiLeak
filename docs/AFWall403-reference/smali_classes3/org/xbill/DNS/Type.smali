.class public final Lorg/xbill/DNS/Type;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/Type$TypeMnemonic;
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final A6:I = 0x26

.field public static final AAAA:I = 0x1c

.field public static final AFSDB:I = 0x12

.field public static final AMTRELAY:I = 0x104

.field public static final ANY:I = 0xff

.field public static final APL:I = 0x2a

.field public static final ATMA:I = 0x22

.field public static final AVC:I = 0x102

.field public static final AXFR:I = 0xfc

.field public static final CAA:I = 0x101

.field public static final CDNSKEY:I = 0x3c

.field public static final CDS:I = 0x3b

.field public static final CERT:I = 0x25

.field public static final CNAME:I = 0x5

.field public static final CSYNC:I = 0x3e

.field public static final DHCID:I = 0x31

.field public static final DLV:I = 0x8001

.field public static final DNAME:I = 0x27

.field public static final DNSKEY:I = 0x30

.field public static final DOA:I = 0x103

.field public static final DS:I = 0x2b

.field public static final EID:I = 0x1f

.field public static final EUI48:I = 0x6c

.field public static final EUI64:I = 0x6d

.field public static final GID:I = 0x66

.field public static final GPOS:I = 0x1b

.field public static final HINFO:I = 0xd

.field public static final HIP:I = 0x37

.field public static final HTTPS:I = 0x41

.field public static final IPSECKEY:I = 0x2d

.field public static final ISDN:I = 0x14

.field public static final IXFR:I = 0xfb

.field public static final KEY:I = 0x19

.field public static final KX:I = 0x24

.field public static final L32:I = 0x69

.field public static final L64:I = 0x6a

.field public static final LOC:I = 0x1d

.field public static final LP:I = 0x6b

.field public static final MAILA:I = 0xfe

.field public static final MAILB:I = 0xfd

.field public static final MB:I = 0x7

.field public static final MD:I = 0x3

.field public static final MF:I = 0x4

.field public static final MG:I = 0x8

.field public static final MINFO:I = 0xe

.field public static final MR:I = 0x9

.field public static final MX:I = 0xf

.field public static final NAPTR:I = 0x23

.field public static final NID:I = 0x68

.field public static final NIMLOC:I = 0x20

.field public static final NINFO:I = 0x38

.field public static final NS:I = 0x2

.field public static final NSAP:I = 0x16

.field public static final NSAP_PTR:I = 0x17

.field public static final NSEC:I = 0x2f

.field public static final NSEC3:I = 0x32

.field public static final NSEC3PARAM:I = 0x33

.field public static final NULL:I = 0xa

.field public static final NXT:I = 0x1e

.field public static final OPENPGPKEY:I = 0x3d

.field public static final OPT:I = 0x29

.field public static final PTR:I = 0xc

.field public static final PX:I = 0x1a

.field public static final RKEY:I = 0x39

.field public static final RP:I = 0x11

.field public static final RRSIG:I = 0x2e

.field public static final RT:I = 0x15

.field public static final SIG:I = 0x18

.field public static final SINK:I = 0x28

.field public static final SMIMEA:I = 0x35

.field public static final SOA:I = 0x6

.field public static final SPF:I = 0x63

.field public static final SRV:I = 0x21

.field public static final SSHFP:I = 0x2c

.field public static final SVCB:I = 0x40

.field public static final TA:I = 0x8000

.field public static final TALINK:I = 0x3a

.field public static final TKEY:I = 0xf9

.field public static final TLSA:I = 0x34

.field public static final TSIG:I = 0xfa

.field public static final TXT:I = 0x10

.field public static final UID:I = 0x65

.field public static final UINFO:I = 0x64

.field public static final UNSPEC:I = 0x67

.field public static final URI:I = 0x100

.field public static final WKS:I = 0xb

.field public static final X25:I = 0x13

.field public static final ZONEMD:I = 0x3f

.field private static final types:Lorg/xbill/DNS/Type$TypeMnemonic;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 361
    new-instance v0, Lorg/xbill/DNS/Type$TypeMnemonic;

    invoke-direct {v0}, Lorg/xbill/DNS/Type$TypeMnemonic;-><init>()V

    sput-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 364
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x1

    const-string v3, "A"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 365
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda2;-><init>()V

    const/4 v2, 0x2

    const-string v3, "NS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 366
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda14;-><init>()V

    const/4 v2, 0x3

    const-string v3, "MD"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 367
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda26;-><init>()V

    const/4 v2, 0x4

    const-string v3, "MF"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 368
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda38;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda38;-><init>()V

    const/4 v2, 0x5

    const-string v3, "CNAME"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 369
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda50;-><init>()V

    const/4 v2, 0x6

    const-string v3, "SOA"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 370
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda53;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda53;-><init>()V

    const/4 v2, 0x7

    const-string v3, "MB"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 371
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda54;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda54;-><init>()V

    const/16 v2, 0x8

    const-string v3, "MG"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 372
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda56;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda56;-><init>()V

    const/16 v2, 0x9

    const-string v3, "MR"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 373
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda57;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda57;-><init>()V

    const/16 v2, 0xa

    const-string v3, "NULL"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 374
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda11;-><init>()V

    const/16 v2, 0xb

    const-string v3, "WKS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 375
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda22;-><init>()V

    const/16 v2, 0xc

    const-string v3, "PTR"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 376
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda33;-><init>()V

    const/16 v2, 0xd

    const-string v3, "HINFO"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 377
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda44;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda44;-><init>()V

    const/16 v2, 0xe

    const-string v3, "MINFO"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 378
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda55;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda55;-><init>()V

    const/16 v2, 0xf

    const-string v3, "MX"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 379
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda58;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda58;-><init>()V

    const/16 v2, 0x10

    const-string v3, "TXT"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 380
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda59;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda59;-><init>()V

    const/16 v2, 0x11

    const-string v3, "RP"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 381
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda60;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda60;-><init>()V

    const/16 v2, 0x12

    const-string v3, "AFSDB"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 382
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda61;-><init>()V

    const/16 v2, 0x13

    const-string v3, "X25"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 383
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda1;-><init>()V

    const/16 v2, 0x14

    const-string v3, "ISDN"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 384
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda3;-><init>()V

    const/16 v2, 0x15

    const-string v3, "RT"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 385
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda4;-><init>()V

    const/16 v2, 0x16

    const-string v3, "NSAP"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 386
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda5;-><init>()V

    const/16 v2, 0x17

    const-string v3, "NSAP-PTR"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 387
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda6;-><init>()V

    const/16 v2, 0x18

    const-string v3, "SIG"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 388
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda7;-><init>()V

    const/16 v2, 0x19

    const-string v3, "KEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 389
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda8;-><init>()V

    const/16 v2, 0x1a

    const-string v3, "PX"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 390
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda9;-><init>()V

    const/16 v2, 0x1b

    const-string v3, "GPOS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 391
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda10;-><init>()V

    const/16 v2, 0x1c

    const-string v3, "AAAA"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 392
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda12;-><init>()V

    const/16 v2, 0x1d

    const-string v3, "LOC"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 393
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda13;-><init>()V

    const/16 v2, 0x1e

    const-string v3, "NXT"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x1f

    const-string v2, "EID"

    .line 394
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x20

    const-string v2, "NIMLOC"

    .line 395
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 396
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda15;-><init>()V

    const/16 v2, 0x21

    const-string v3, "SRV"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x22

    const-string v2, "ATMA"

    .line 397
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 398
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda16;-><init>()V

    const/16 v2, 0x23

    const-string v3, "NAPTR"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 399
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda17;-><init>()V

    const/16 v2, 0x24

    const-string v3, "KX"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 400
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda18;-><init>()V

    const/16 v2, 0x25

    const-string v3, "CERT"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 401
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda19;-><init>()V

    const/16 v2, 0x26

    const-string v3, "A6"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 402
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda20;-><init>()V

    const/16 v2, 0x27

    const-string v3, "DNAME"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x28

    const-string v2, "SINK"

    .line 403
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 404
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda21;-><init>()V

    const/16 v2, 0x29

    const-string v3, "OPT"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 405
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda23;-><init>()V

    const/16 v2, 0x2a

    const-string v3, "APL"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 406
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda24;-><init>()V

    const/16 v2, 0x2b

    const-string v3, "DS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 407
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda25;-><init>()V

    const/16 v2, 0x2c

    const-string v3, "SSHFP"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 408
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda27;-><init>()V

    const/16 v2, 0x2d

    const-string v3, "IPSECKEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 409
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda28;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda28;-><init>()V

    const/16 v2, 0x2e

    const-string v3, "RRSIG"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 410
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda29;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda29;-><init>()V

    const/16 v2, 0x2f

    const-string v3, "NSEC"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 411
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda30;-><init>()V

    const/16 v2, 0x30

    const-string v3, "DNSKEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 412
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda31;-><init>()V

    const/16 v2, 0x31

    const-string v3, "DHCID"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 413
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda32;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda32;-><init>()V

    const/16 v2, 0x32

    const-string v3, "NSEC3"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 414
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda34;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda34;-><init>()V

    const/16 v2, 0x33

    const-string v3, "NSEC3PARAM"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 415
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda35;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda35;-><init>()V

    const/16 v2, 0x34

    const-string v3, "TLSA"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 416
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda36;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda36;-><init>()V

    const/16 v2, 0x35

    const-string v3, "SMIMEA"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 418
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda37;-><init>()V

    const/16 v2, 0x37

    const-string v3, "HIP"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x38

    const-string v2, "NINFO"

    .line 419
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x39

    const-string v2, "RKEY"

    .line 420
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x3a

    const-string v2, "TALINK"

    .line 421
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 422
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda39;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda39;-><init>()V

    const/16 v2, 0x3b

    const-string v3, "CDS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 423
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda40;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda40;-><init>()V

    const/16 v2, 0x3c

    const-string v3, "CDNSKEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 424
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda41;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda41;-><init>()V

    const/16 v2, 0x3d

    const-string v3, "OPENPGPKEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x3e

    const-string v2, "CSYNC"

    .line 425
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 426
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda42;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda42;-><init>()V

    const/16 v2, 0x3f

    const-string v3, "ZONEMD"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 427
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda43;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda43;-><init>()V

    const/16 v2, 0x40

    const-string v3, "SVCB"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 428
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda45;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda45;-><init>()V

    const/16 v2, 0x41

    const-string v3, "HTTPS"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 430
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda46;-><init>()V

    const/16 v2, 0x63

    const-string v3, "SPF"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x64

    const-string v2, "UINFO"

    .line 431
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x65

    const-string v2, "UID"

    .line 432
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x66

    const-string v2, "GID"

    .line 433
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x67

    const-string v2, "UNSPEC"

    .line 434
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x68

    const-string v2, "NID"

    .line 435
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x69

    const-string v2, "L32"

    .line 436
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x6a

    const-string v2, "L64"

    .line 437
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x6b

    const-string v2, "LP"

    .line 438
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x6c

    const-string v2, "EUI48"

    .line 439
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x6d

    const-string v2, "EUI64"

    .line 440
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 442
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda47;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda47;-><init>()V

    const/16 v2, 0xf9

    const-string v3, "TKEY"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 443
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda48;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda48;-><init>()V

    const/16 v2, 0xfa

    const-string v3, "TSIG"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0xfb

    const-string v2, "IXFR"

    .line 444
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xfc

    const-string v2, "AXFR"

    .line 445
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xfd

    const-string v2, "MAILB"

    .line 446
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xfe

    const-string v2, "MAILA"

    .line 447
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xff

    const-string v2, "ANY"

    .line 448
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 449
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda49;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda49;-><init>()V

    const/16 v2, 0x100

    const-string v3, "URI"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    .line 450
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda51;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda51;-><init>()V

    const/16 v2, 0x101

    const-string v3, "CAA"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    const/16 v1, 0x102

    const-string v2, "AVC"

    .line 451
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x103

    const-string v2, "DOA"

    .line 452
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x104

    const-string v2, "AMTRELAY"

    .line 453
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    const v1, 0x8000

    const-string v2, "TA"

    .line 455
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;)V

    .line 456
    new-instance v1, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Lorg/xbill/DNS/Type$$ExternalSyntheticLambda52;-><init>()V

    const v2, 0x8001

    const-string v3, "DLV"

    invoke-virtual {v0, v2, v3, v1}, Lorg/xbill/DNS/Type$TypeMnemonic;->add(ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(I)V
    .locals 1

    if-ltz p0, :cond_0

    const v0, 0xffff

    if-gt p0, v0, :cond_0

    return-void

    .line 468
    :cond_0
    new-instance v0, Lorg/xbill/DNS/InvalidTypeException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/InvalidTypeException;-><init>(I)V

    throw v0
.end method

.method static getFactory(I)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Supplier<",
            "Lorg/xbill/DNS/Record;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 525
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getFactory(I)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static isRR(I)Z
    .locals 1

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static register(ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Lorg/xbill/DNS/Record;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 486
    invoke-virtual {v0, p0, p1, p2}, Lorg/xbill/DNS/Type$TypeMnemonic;->replace(ILjava/lang/String;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public static string(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 497
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static value(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 521
    invoke-static {p0, v0}, Lorg/xbill/DNS/Type;->value(Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static value(Ljava/lang/String;Z)I
    .locals 3

    sget-object v0, Lorg/xbill/DNS/Type;->types:Lorg/xbill/DNS/Type$TypeMnemonic;

    .line 508
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    if-eqz p1, :cond_0

    .line 510
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "TYPE"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Type$TypeMnemonic;->getValue(Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method
