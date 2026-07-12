.class public Lorg/xbill/DNS/ExtendedErrorCodeOption;
.super Lorg/xbill/DNS/EDNSOption;
.source "ExtendedErrorCodeOption.java"


# static fields
.field public static final BLOCKED:I = 0xf

.field public static final CACHED_ERROR:I = 0xd

.field public static final CENSORED:I = 0x10

.field public static final DNSKEY_MISSING:I = 0x9

.field public static final DNSSEC_BOGUS:I = 0x6

.field public static final DNSSEC_INDETERMINATE:I = 0x5

.field public static final FILTERED:I = 0x11

.field public static final FORGED_ANSWER:I = 0x4

.field public static final INVALID_DATA:I = 0x18

.field public static final NETWORK_ERROR:I = 0x17

.field public static final NOT_AUTHORITATIVE:I = 0x14

.field public static final NOT_READY:I = 0xe

.field public static final NOT_SUPPORTED:I = 0x15

.field public static final NO_REACHABLE_AUTHORITY:I = 0x16

.field public static final NO_ZONE_KEY_BIT_SET:I = 0xb

.field public static final NSEC_MISSING:I = 0xc

.field public static final OTHER:I = 0x0

.field public static final PROHIBITED:I = 0x12

.field public static final RRSIGS_MISSING:I = 0xa

.field public static final SIGNATURE_EXPIRED:I = 0x7

.field public static final SIGNATURE_EXPIRED_BEFORE_VALID:I = 0x19

.field public static final SIGNATURE_NOT_YET_VALID:I = 0x8

.field public static final STALE_ANSWER:I = 0x3

.field public static final STALE_NXDOMAIN_ANSWER:I = 0x13

.field public static final SYNTHESIZED:I = 0x1d

.field public static final TOO_EARLY:I = 0x1a

.field public static final UNABLE_TO_CONFORM_TO_POLICY:I = 0x1c

.field public static final UNSUPPORTED_DNSKEY_ALGORITHM:I = 0x1

.field public static final UNSUPPORTED_DS_DIGEST_TYPE:I = 0x2

.field public static final UNSUPPORTED_NSEC3_ITERATIONS_VALUE:I = 0x1b

.field private static final codes:Lorg/xbill/DNS/Mnemonic;


# instance fields
.field private errorCode:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 201
    new-instance v0, Lorg/xbill/DNS/Mnemonic;

    const-string v1, "EDNS Extended Error Codes"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->codes:Lorg/xbill/DNS/Mnemonic;

    const v1, 0xffff

    .line 205
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setMaximum(I)V

    const-string v1, "EDE"

    .line 206
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->setPrefix(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, "OTHER"

    .line 207
    invoke-virtual {v0, v1, v3}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const-string v1, "UNSUPPORTED_DNSKEY_ALGORITHM"

    .line 208
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED_DS_DIGEST_TYPE"

    .line 209
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "STALE_ANSWER"

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x4

    const-string v2, "FORGED_ANSWER"

    .line 211
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x5

    const-string v2, "DNSSEC_INDETERMINATE"

    .line 212
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x6

    const-string v2, "DNSSEC_BOGUS"

    .line 213
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/4 v1, 0x7

    const-string v2, "SIGNATURE_EXPIRED"

    .line 214
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x8

    const-string v2, "SIGNATURE_NOT_YET_VALID"

    .line 215
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x9

    const-string v2, "DNSKEY_MISSING"

    .line 216
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xa

    const-string v2, "RRSIGS_MISSING"

    .line 217
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xb

    const-string v2, "NO_ZONE_KEY_BIT_SET"

    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xc

    const-string v2, "NSEC_MISSING"

    .line 219
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xd

    const-string v2, "CACHED_ERROR"

    .line 220
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xe

    const-string v2, "NOT_READY"

    .line 221
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0xf

    const-string v2, "BLOCKED"

    .line 222
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x10

    const-string v2, "CENSORED"

    .line 223
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x11

    const-string v2, "FILTERED"

    .line 224
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x12

    const-string v2, "PROHIBITED"

    .line 225
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x13

    const-string v2, "STALE_NXDOMAIN_ANSWER"

    .line 226
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x14

    const-string v2, "NOT_AUTHORITATIVE"

    .line 227
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x15

    const-string v2, "NOT_SUPPORTED"

    .line 228
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x16

    const-string v2, "NO_REACHABLE_AUTHORITY"

    .line 229
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x17

    const-string v2, "NETWORK_ERROR"

    .line 230
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x18

    const-string v2, "INVALID_DATA"

    .line 231
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x19

    const-string v2, "SIGNATURE_EXPIRED_BEFORE_VALID"

    .line 232
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1a

    const-string v2, "TOO_EARLY"

    .line 233
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1b

    const-string v2, "UNSUPPORTED_NSEC3_ITERATIONS_VALUE"

    .line 234
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1c

    const-string v2, "UNABLE_TO_CONFORM_TO_POLICY"

    .line 235
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    const/16 v1, 0x1d

    const-string v2, "SYNTHESIZED"

    .line 236
    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/16 v0, 0xf

    .line 259
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/ExtendedErrorCodeOption;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    .line 269
    invoke-direct {p0, v0}, Lorg/xbill/DNS/EDNSOption;-><init>(I)V

    iput p1, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    iput-object p2, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    return-void
.end method

.method public static code(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->codes:Lorg/xbill/DNS/Mnemonic;

    .line 254
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static text(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->codes:Lorg/xbill/DNS/Mnemonic;

    .line 245
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    return-object v0
.end method

.method optionFromWire(Lorg/xbill/DNS/DNSInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    .line 286
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->remaining()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p1

    .line 288
    array-length v0, p1

    .line 291
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 295
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method optionToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->codes:Lorg/xbill/DNS/Mnemonic;

    iget v1, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    .line 310
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/xbill/DNS/ExtendedErrorCodeOption;->codes:Lorg/xbill/DNS/Mnemonic;

    iget v2, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Mnemonic;->getText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method optionToWire(Lorg/xbill/DNS/DNSOutput;)V
    .locals 2

    iget v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->errorCode:I

    .line 301
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;->text:Ljava/lang/String;

    .line 303
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :cond_0
    return-void
.end method
