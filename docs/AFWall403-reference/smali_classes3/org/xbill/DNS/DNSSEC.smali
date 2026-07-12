.class public Lorg/xbill/DNS/DNSSEC;
.super Ljava/lang/Object;
.source "DNSSEC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/DNSSEC$MalformedKeyException;,
        Lorg/xbill/DNS/DNSSEC$ECKeyInfo;,
        Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;,
        Lorg/xbill/DNS/DNSSEC$DNSSECException;,
        Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;,
        Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;,
        Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;,
        Lorg/xbill/DNS/DNSSEC$KeyMismatchException;,
        Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;,
        Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;,
        Lorg/xbill/DNS/DNSSEC$NoSignatureException;,
        Lorg/xbill/DNS/DNSSEC$Digest;,
        Lorg/xbill/DNS/DNSSEC$Algorithm;
    }
.end annotation


# static fields
.field static final ASN1_BITSTRING:I = 0x3

.field static final ASN1_INT:I = 0x2

.field static final ASN1_OID:I = 0x6

.field static final ASN1_SEQ:I = 0x30

.field private static final DSA_LEN:I = 0x14

.field private static final ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

.field private static final GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 617
    new-instance v8, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v1, 0x20

    const-string v2, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD97"

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD94"

    const-string v4, "A6"

    const-string v5, "1"

    const-string v6, "8D91E471E0989CDA27DF505A453F2B7635294F2DDF23E3B122ACC99C9E9F1E14"

    const-string v7, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C611070995AD10045841B09B761B893"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 628
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v10, 0x20

    const-string v11, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    const-string v12, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFC"

    const-string v13, "5AC635D8AA3A93E7B3EBBD55769886BC651D06B0CC53B0F63BCE3C3E27D2604B"

    const-string v14, "6B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C296"

    const-string v15, "4FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5"

    const-string v16, "FFFFFFFF00000000FFFFFFFFFFFFFFFFBCE6FAADA7179E84F3B9CAC2FC632551"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 639
    new-instance v0, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    const/16 v2, 0x30

    const-string v3, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFF"

    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF0000000000000000FFFFFFFC"

    const-string v5, "B3312FA7E23EE7E4988E056BE3F82D19181D9C6EFE8141120314088F5013875AC656398D8A2ED19D2A85C8EDD3EC2AEF"

    const-string v6, "AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB7"

    const-string v7, "3617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F"

    const-string v8, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7634D81F4372DDF581A0DB248B0A77AECEC196ACCC52973"

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static algString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 874
    :pswitch_0
    new-instance v0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw v0

    :pswitch_1
    const-string p0, "Ed448"

    return-object p0

    :pswitch_2
    const-string p0, "Ed25519"

    return-object p0

    :pswitch_3
    const-string p0, "SHA384withECDSA"

    return-object p0

    :pswitch_4
    const-string p0, "SHA256withECDSA"

    return-object p0

    :pswitch_5
    const-string p0, "GOST3411withECGOST3410"

    return-object p0

    :pswitch_6
    const-string p0, "SHA512withRSA"

    return-object p0

    :pswitch_7
    const-string p0, "SHA256withRSA"

    return-object p0

    :pswitch_8
    const-string p0, "SHA1withRSA"

    return-object p0

    :pswitch_9
    const-string p0, "SHA1withDSA"

    return-object p0

    :pswitch_a
    const-string p0, "MD5withRSA"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static asn1ParseException(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/IOException;
    .locals 3

    .line 886
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid ASN.1 data, expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " got "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static bigIntegerLength(Ljava/math/BigInteger;)I
    .locals 0

    .line 493
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static checkAlgorithm(Ljava/security/PrivateKey;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;
        }
    .end annotation

    const-string v0, "EdDSA"

    packed-switch p1, :pswitch_data_0

    .line 1228
    :pswitch_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw p0

    :pswitch_1
    const-string p1, "Ed448"

    .line 1223
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1224
    :cond_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    :pswitch_2
    const-string p1, "Ed25519"

    .line 1218
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 1219
    :cond_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    :pswitch_3
    const-string p1, "EC"

    .line 1213
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "ECDSA"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 1214
    :cond_2
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    :pswitch_4
    const-string p1, "DSA"

    .line 1206
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 1207
    :cond_3
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    :pswitch_5
    const-string p1, "RSA"

    .line 1200
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    return-void

    .line 1201
    :cond_5
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static checkKeyAndSigRecord(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;Ljava/time/Instant;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1131
    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1135
    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;Ljava/time/Instant;)I

    move-result p1

    if-gtz p1, :cond_1

    .line 1139
    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/time/Instant;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;Ljava/time/Instant;)I

    move-result p1

    if-ltz p1, :cond_0

    return-void

    .line 1140
    :cond_0
    new-instance p1, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/time/Instant;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    throw p1

    .line 1136
    :cond_1
    new-instance p1, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/time/Instant;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;-><init>(Ljava/time/Instant;Ljava/time/Instant;)V

    throw p1

    .line 1132
    :cond_2
    new-instance p2, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;

    invoke-direct {p2, p1, p0}, Lorg/xbill/DNS/DNSSEC$KeyMismatchException;-><init>(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;)V

    throw p2
.end method

.method public static digestMessage(Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/Message;[B)[B
    .locals 1

    .line 349
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 350
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    if-eqz p2, :cond_0

    .line 353
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 356
    :cond_0
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->toWire(Lorg/xbill/DNS/DNSOutput;)V

    .line 357
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B
    .locals 4

    .line 303
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 304
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    .line 306
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 308
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 309
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    if-le v3, v2, :cond_0

    .line 310
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 313
    :goto_0
    new-instance v3, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v3}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    if-eqz v2, :cond_1

    .line 315
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    goto :goto_1

    .line 317
    :cond_1
    invoke-virtual {v1, v3}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    .line 319
    :goto_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 320
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 321
    invoke-virtual {p0}, Lorg/xbill/DNS/RRSIGRecord;->getOrigTTL()J

    move-result-wide v1

    invoke-virtual {v3, v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    const/4 p0, 0x0

    .line 322
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 323
    invoke-static {p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/xbill/DNS/DNSSEC$$ExternalSyntheticLambda5;

    invoke-direct {p1, v0, v3}, Lorg/xbill/DNS/DNSSEC$$ExternalSyntheticLambda5;-><init>(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/DNSOutput;)V

    .line 324
    invoke-static {p0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Consumer;)V

    .line 336
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V
    .locals 2

    .line 284
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTypeCovered()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 285
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 286
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getLabels()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 287
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getOrigTTL()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 288
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getExpire()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 289
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getTimeSigned()Ljava/time/Instant;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Instant;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeU32(J)V

    .line 290
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 291
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/Name;->toWireCanonical(Lorg/xbill/DNS/DNSOutput;)V

    return-void
.end method

.method private static dsaSignatureFromDNS([BIZ)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 891
    array-length v0, p0

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_1

    .line 895
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 896
    new-instance p0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    if-eqz p2, :cond_0

    .line 900
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 903
    :cond_0
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object p2

    .line 904
    invoke-static {p2, p1}, Lorg/xbill/DNS/DNSSEC;->getDsaIntLen([BI)I

    move-result v1

    .line 906
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object v0

    .line 907
    invoke-static {v0, p1}, Lorg/xbill/DNS/DNSSEC;->getDsaIntLen([BI)I

    move-result v2

    const/16 v3, 0x30

    .line 909
    invoke-virtual {p0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x4

    .line 910
    invoke-virtual {p0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 912
    invoke-static {p1, p0, p2, v1}, Lorg/xbill/DNS/DNSSEC;->writeAsn1Int(ILorg/xbill/DNS/DNSOutput;[BI)V

    .line 913
    invoke-static {p1, p0, v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeAsn1Int(ILorg/xbill/DNS/DNSOutput;[BI)V

    .line 915
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 892
    :cond_1
    new-instance p1, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "input has unexpected length "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static dsaSignatureToDNS([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 944
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 945
    new-instance p0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 948
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 951
    :cond_0
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result p2

    const/16 v1, 0x30

    if-ne p2, v1, :cond_1

    .line 955
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    .line 957
    invoke-static {p1, v0, p0}, Lorg/xbill/DNS/DNSSEC;->transformAns1IntToDns(ILorg/xbill/DNS/DNSInput;Lorg/xbill/DNS/DNSOutput;)V

    .line 958
    invoke-static {p1, v0, p0}, Lorg/xbill/DNS/DNSSEC;->transformAns1IntToDns(ILorg/xbill/DNS/DNSInput;Lorg/xbill/DNS/DNSOutput;)V

    .line 959
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 953
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->asn1ParseException(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private static fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B
    .locals 5

    .line 753
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 754
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 755
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 756
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v3

    .line 757
    invoke-interface {p0}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object p0

    .line 758
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x40

    div-int/lit8 v4, v4, 0x8

    .line 760
    invoke-virtual {v0, v4}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 761
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 762
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    mul-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x40

    .line 763
    invoke-static {v0, v3, v4}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 764
    invoke-static {v0, p0, v4}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 766
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 3

    .line 782
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 784
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 785
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    .line 787
    iget v2, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 788
    iget p1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, p0, p1}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 790
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B
    .locals 3

    .line 770
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 772
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 773
    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    .line 775
    iget v2, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1, v2}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 776
    iget p1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, p0, p1}, Lorg/xbill/DNS/DNSSEC;->writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V

    .line 778
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static fromEdDSAPublicKey(Ljava/security/PublicKey;)[B
    .locals 2

    .line 795
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p0

    const/16 v0, 0xc

    .line 796
    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method static fromPublicKey(Ljava/security/PublicKey;I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 839
    :pswitch_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw p0

    .line 834
    :pswitch_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 837
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromEdDSAPublicKey(Ljava/security/PublicKey;)[B

    move-result-object p0

    return-object p0

    .line 835
    :cond_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    .line 828
    :pswitch_2
    instance-of p1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_1

    .line 831
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object p1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object p0

    return-object p0

    .line 829
    :cond_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    .line 823
    :pswitch_3
    instance-of p1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_2

    .line 826
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object p1, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->fromECDSAPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object p0

    return-object p0

    .line 824
    :cond_2
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    .line 818
    :pswitch_4
    instance-of p1, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_3

    .line 821
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    sget-object p1, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->fromECGOSTPublicKey(Ljava/security/interfaces/ECPublicKey;Lorg/xbill/DNS/DNSSEC$ECKeyInfo;)[B

    move-result-object p0

    return-object p0

    .line 819
    :cond_3
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    .line 813
    :pswitch_5
    instance-of p1, p0, Ljava/security/interfaces/DSAPublicKey;

    if-eqz p1, :cond_4

    .line 816
    check-cast p0, Ljava/security/interfaces/DSAPublicKey;

    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromDSAPublicKey(Ljava/security/interfaces/DSAPublicKey;)[B

    move-result-object p0

    return-object p0

    .line 814
    :cond_4
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    .line 807
    :pswitch_6
    instance-of p1, p0, Ljava/security/interfaces/RSAPublicKey;

    if-eqz p1, :cond_5

    .line 810
    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object p0

    return-object p0

    .line 808
    :cond_5
    new-instance p0, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$IncompatibleKeyException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static fromRSAPublicKey(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 4

    .line 735
    new-instance v0, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v0}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 736
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 737
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    .line 738
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC;->bigIntegerLength(Ljava/math/BigInteger;)I

    move-result v2

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    .line 741
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 743
    invoke-virtual {v0, v3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 744
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 746
    :goto_0
    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 747
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V

    .line 749
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static generateDSDigest(Lorg/xbill/DNS/DNSKEYRecord;I)[B
    .locals 2

    const-string v0, "unknown DS digest type "

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    :try_start_0
    const-string p1, "sha-384"

    .line 1426
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    goto :goto_0

    .line 1429
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "GOST3411"

    .line 1423
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "sha-256"

    .line 1420
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "sha-1"

    .line 1417
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    :goto_0
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->toWireCanonical()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1435
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSKEYRecord;->rdataToWireCanonical()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1436
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 1432
    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "no message digest support"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getDsaIntLen([BI)I
    .locals 3

    const/4 v0, 0x0

    .line 920
    aget-byte v1, p0, v0

    if-gez v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    move v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ge v1, v2, :cond_1

    .line 923
    aget-byte v2, p0, v1

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p0, v1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    return p1
.end method

.method static synthetic lambda$digestRRset$0(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Record;)V
    .locals 2

    .line 326
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 327
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result p1

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 329
    invoke-virtual {p2, p0, v0, v1}, Lorg/xbill/DNS/Record;->rrToWire(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/Compression;Z)V

    .line 330
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->current()I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x2

    .line 331
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->save()V

    .line 332
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->jump(I)V

    .line 333
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/DNSOutput;->writeU16(I)V

    .line 334
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSOutput;->restore()V

    return-void
.end method

.method private static matches(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;)Z
    .locals 2

    .line 1051
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1052
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1053
    invoke-virtual {p1}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p0}, Lorg/xbill/DNS/SIGBase;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;
    .locals 2

    .line 502
    invoke-virtual {p0}, Lorg/xbill/DNS/DNSInput;->readByteArray()[B

    move-result-object p0

    .line 503
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method private static readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 497
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object p0

    .line 498
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method private static readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object p0

    .line 527
    invoke-static {p0}, Lorg/xbill/DNS/DNSSEC;->reverseByteArray([B)V

    .line 528
    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method private static reverseByteArray([B)V
    .locals 4

    const/4 v0, 0x0

    .line 517
    :goto_0
    array-length v1, p0

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 518
    array-length v1, p0

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    .line 519
    aget-byte v2, p0, v0

    .line 520
    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    .line 521
    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1298
    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1325
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v15

    .line 1326
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 1328
    new-instance v14, Lorg/xbill/DNS/RRSIGRecord;

    .line 1330
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v3

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v4

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    .line 1335
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/RRset;->getTTL()J

    move-result-wide v8

    .line 1338
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v12

    .line 1339
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/16 v16, 0x0

    move-object v1, v14

    move v7, v15

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/RRSIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/time/Instant;Ljava/time/Instant;ILorg/xbill/DNS/Name;[B)V

    .line 1342
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object v2

    move-object/from16 v3, p5

    move-object v4, v0

    move-object/from16 v0, p2

    invoke-static {v0, v1, v15, v2, v3}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/RRSIGRecord;->setSignature([B)V

    return-object v4
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1251
    invoke-static {p3}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v3

    invoke-static {p4}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object p0

    return-object p0
.end method

.method public static sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1278
    invoke-static {p3}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v3

    invoke-static {p4}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lorg/xbill/DNS/DNSSEC;->sign(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;)Lorg/xbill/DNS/RRSIGRecord;

    move-result-object p0

    return-object p0
.end method

.method static sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 1150
    :try_start_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p4

    goto :goto_0

    .line 1152
    :cond_0
    invoke-static {p2}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p4

    .line 1154
    :goto_0
    invoke-virtual {p4, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 1155
    invoke-virtual {p4, p3}, Ljava/security/Signature;->update([B)V

    .line 1156
    invoke-virtual {p4}, Ljava/security/Signature;->sign()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1161
    instance-of p3, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz p3, :cond_1

    .line 1163
    :try_start_1
    check-cast p1, Ljava/security/interfaces/DSAPublicKey;

    .line 1164
    invoke-interface {p1}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object p1

    invoke-interface {p1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object p1

    .line 1165
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->bigIntegerLength(Ljava/math/BigInteger;)I

    move-result p1

    add-int/lit8 p1, p1, -0x40

    div-int/lit8 p1, p1, 0x8

    const/16 p2, 0x14

    .line 1166
    invoke-static {p0, p2, p1}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureToDNS([BII)[B

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1168
    new-instance p1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1170
    :cond_1
    instance-of p1, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1183
    :try_start_2
    new-instance p0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_1

    :pswitch_0
    sget-object p2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 1180
    iget p2, p2, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {p0, p2, p1}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureToDNS([BII)[B

    move-result-object p0

    goto :goto_3

    :pswitch_1
    sget-object p2, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 1177
    iget p2, p2, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {p0, p2, p1}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureToDNS([BII)[B

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    .line 1183
    :goto_1
    invoke-direct {p0, p2}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1186
    :goto_2
    new-instance p1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_3
    :pswitch_2
    return-object p0

    :catch_2
    move-exception p0

    .line 1158
    new-instance p1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static signMessage(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/security/PrivateKey;Ljava/time/Instant;Ljava/time/Instant;)Lorg/xbill/DNS/SIGRecord;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1354
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getAlgorithm()I

    move-result v15

    .line 1355
    invoke-static {v0, v15}, Lorg/xbill/DNS/DNSSEC;->checkAlgorithm(Ljava/security/PrivateKey;I)V

    .line 1357
    new-instance v14, Lorg/xbill/DNS/SIGRecord;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const/16 v3, 0xff

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    .line 1367
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getFootprint()I

    move-result v12

    .line 1368
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v13

    const/16 v16, 0x0

    move-object v1, v14

    move v7, v15

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move-object v0, v14

    move-object/from16 v14, v16

    invoke-direct/range {v1 .. v14}, Lorg/xbill/DNS/SIGRecord;-><init>(Lorg/xbill/DNS/Name;IJIIJLjava/time/Instant;Ljava/time/Instant;ILorg/xbill/DNS/Name;[B)V

    .line 1370
    new-instance v1, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {v1}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1371
    invoke-static {v1, v0}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    if-eqz p1, :cond_0

    .line 1373
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1375
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/xbill/DNS/Message;->toWire()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1377
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/KEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v0

    move-object/from16 v0, p3

    invoke-static {v0, v2, v15, v1, v3}, Lorg/xbill/DNS/DNSSEC;->sign(Ljava/security/PrivateKey;Ljava/security/PublicKey;I[BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/xbill/DNS/SIGRecord;->setSignature([B)V

    return-object v4
.end method

.method private static toDSAPublicKey([B)Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;,
            Lorg/xbill/DNS/DNSSEC$MalformedKeyException;
        }
    .end annotation

    .line 582
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 584
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result p0

    const/16 v1, 0x8

    if-gt p0, v1, :cond_0

    const/16 v2, 0x14

    .line 589
    invoke-static {v0, v2}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v2

    mul-int/lit8 p0, p0, 0x8

    add-int/lit8 p0, p0, 0x40

    .line 590
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 591
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v3

    .line 592
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object p0

    const-string v0, "DSA"

    .line 594
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 595
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v4, p0, v1, v2, v3}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 586
    :cond_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    const-string v0, "t is too large"

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toECDSAPublicKey([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 663
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 666
    iget p0, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 667
    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 668
    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "EC"

    .line 670
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 671
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    iget-object p1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static toECGOSTPublicKey([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 651
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 653
    iget p0, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 654
    iget v1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v0, v1}, Lorg/xbill/DNS/DNSSEC;->readBigIntegerLittleEndian(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 655
    new-instance v1, Ljava/security/spec/ECPoint;

    invoke-direct {v1, p0, v0}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p0, "ECGOST3410"

    .line 657
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 658
    new-instance v0, Ljava/security/spec/ECPublicKeySpec;

    iget-object p1, p1, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->spec:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v0, v1, p1}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static toEdDSAPublicKey([BB)Ljava/security/PublicKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 678
    array-length v0, p0

    const/16 v1, 0xc

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x30

    .line 679
    aput-byte v3, v0, v2

    .line 680
    array-length v4, p0

    const/16 v5, 0xa

    add-int/2addr v4, v5

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v0, v6

    const/4 v4, 0x2

    .line 681
    aput-byte v3, v0, v4

    const/4 v3, 0x3

    const/4 v4, 0x5

    .line 682
    aput-byte v4, v0, v3

    const/4 v7, 0x4

    const/4 v8, 0x6

    .line 683
    aput-byte v8, v0, v7

    .line 684
    aput-byte v3, v0, v4

    const/16 v4, 0x2b

    .line 685
    aput-byte v4, v0, v8

    const/4 v4, 0x7

    const/16 v7, 0x65

    .line 686
    aput-byte v7, v0, v4

    const/16 v4, 0x8

    .line 687
    aput-byte p1, v0, v4

    const/16 p1, 0x9

    .line 688
    aput-byte v3, v0, p1

    .line 689
    array-length p1, p0

    add-int/2addr p1, v6

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    .line 690
    array-length p1, p0

    invoke-static {p0, v2, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 691
    new-instance p0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {p0, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p1, "EdDSA"

    .line 692
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    .line 693
    invoke-virtual {p1, p0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method static toPublicKey(I[BLorg/xbill/DNS/Record;)Ljava/security/PublicKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 725
    :pswitch_0
    :try_start_0
    new-instance p1, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_0

    :pswitch_1
    const/16 p0, 0x71

    .line 723
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->toEdDSAPublicKey([BB)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x70

    .line 721
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->toEdDSAPublicKey([BB)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 719
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 717
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->toECDSAPublicKey([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 715
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->toECGOSTPublicKey([BLorg/xbill/DNS/DNSSEC$ECKeyInfo;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 713
    :pswitch_6
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->toDSAPublicKey([B)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    .line 710
    :pswitch_7
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->toRSAPublicKey([B)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 725
    :goto_0
    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :goto_1
    new-instance p1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 728
    :goto_2
    new-instance p1, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;

    invoke-direct {p1, p2, p0}, Lorg/xbill/DNS/DNSSEC$MalformedKeyException;-><init>(Lorg/xbill/DNS/Record;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static toPublicKey(Lorg/xbill/DNS/KEYBase;)Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v0

    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getKey()[B

    move-result-object v1

    invoke-static {v0, v1, p0}, Lorg/xbill/DNS/DNSSEC;->toPublicKey(I[BLorg/xbill/DNS/Record;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static toRSAPublicKey([B)Ljava/security/PublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 568
    new-instance v0, Lorg/xbill/DNS/DNSInput;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/DNSInput;-><init>([B)V

    .line 569
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result p0

    if-nez p0, :cond_0

    .line 571
    invoke-virtual {v0}, Lorg/xbill/DNS/DNSInput;->readU16()I

    move-result p0

    .line 573
    :cond_0
    invoke-static {v0, p0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 574
    invoke-static {v0}, Lorg/xbill/DNS/DNSSEC;->readBigInteger(Lorg/xbill/DNS/DNSInput;)Ljava/math/BigInteger;

    move-result-object v0

    const-string v1, "RSA"

    .line 576
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 577
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, p0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static transformAns1IntToDns(ILorg/xbill/DNS/DNSInput;Lorg/xbill/DNS/DNSOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 971
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v0

    add-int/lit8 v1, p0, 0x1

    if-ne v0, v1, :cond_0

    .line 972
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSInput;->readU8()I

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    if-gt v0, p0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sub-int v3, p0, v0

    if-ge v2, v3, :cond_1

    .line 977
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSInput;->readByteArray(I)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void

    .line 980
    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Invalid r/s-value in ASN.1 DER encoded signature: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 966
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/xbill/DNS/DNSSEC;->asn1ParseException(Ljava/lang/Object;Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private static trimByteArray([B)[B
    .locals 4

    const/4 v0, 0x0

    .line 507
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 508
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    new-array v1, v1, [B

    .line 509
    array-length v3, p0

    sub-int/2addr v3, v2

    invoke-static {p0, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_0
    return-object p0
.end method

.method private static verify(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;[BI)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    const-string v0, "/"

    const-string v1, ",id="

    const-string v2, "Key "

    const-string v3, "input has unexpected length "

    .line 988
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 989
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result v5

    .line 990
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getSignature()[B

    move-result-object v6

    .line 991
    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_0

    const/16 v3, 0x14

    const/4 v7, 0x1

    .line 993
    :try_start_0
    invoke-static {v6, v3, v7}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureFromDNS([BIZ)[B

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 995
    new-instance p1, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 997
    :cond_0
    instance-of v7, v4, Ljava/security/interfaces/ECPublicKey;

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1014
    :try_start_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;

    goto :goto_1

    :pswitch_0
    sget-object v3, Lorg/xbill/DNS/DNSSEC;->ECDSA_P384:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 1011
    iget v3, v3, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v6, v3, v7}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureFromDNS([BIZ)[B

    move-result-object v3

    goto :goto_0

    :pswitch_1
    sget-object v3, Lorg/xbill/DNS/DNSSEC;->ECDSA_P256:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    .line 1008
    iget v3, v3, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    invoke-static {v6, v3, v7}, Lorg/xbill/DNS/DNSSEC;->dsaSignatureFromDNS([BIZ)[B

    move-result-object v3

    :goto_0
    move-object v6, v3

    goto :goto_3

    .line 1002
    :pswitch_2
    array-length v7, v6

    sget-object v8, Lorg/xbill/DNS/DNSSEC;->GOST:Lorg/xbill/DNS/DNSSEC$ECKeyInfo;

    iget v8, v8, Lorg/xbill/DNS/DNSSEC$ECKeyInfo;->length:I

    mul-int/lit8 v8, v8, 0x2

    if-ne v7, v8, :cond_1

    goto :goto_3

    .line 1003
    :cond_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    goto :goto_2

    .line 1014
    :goto_1
    invoke-direct {p0, v5}, Lorg/xbill/DNS/DNSSEC$UnsupportedAlgorithmException;-><init>(I)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1017
    :goto_2
    new-instance p1, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1022
    :cond_2
    :goto_3
    :try_start_2
    invoke-static {v5}, Lorg/xbill/DNS/DNSSEC;->algString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 1023
    invoke-virtual {v3, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 1024
    invoke-virtual {v3, p2}, Ljava/security/Signature;->update([B)V

    .line 1025
    invoke-virtual {v3, v6}, Ljava/security/Signature;->verify([B)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 1026
    :cond_3
    new-instance p2, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (alg="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getAlgorithm()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p0}, Lorg/xbill/DNS/KEYBase;->getFootprint()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") doesn\'t validate <"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getName()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getDClass()I

    move-result p0

    invoke-static {p0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-static {p3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "> (alg="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getAlgorithm()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {p1}, Lorg/xbill/DNS/SIGBase;->getFootprint()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xbill/DNS/DNSSEC$SignatureVerificationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p0

    .line 1046
    new-instance p1, Lorg/xbill/DNS/DNSSEC$DNSSECException;

    invoke-direct {p1, p0}, Lorg/xbill/DNS/DNSSEC$DNSSECException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1072
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Instant;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)V

    return-void
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getFlags()I

    move-result v0

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 1119
    invoke-virtual {p2}, Lorg/xbill/DNS/DNSKEYRecord;->getProtocol()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1124
    invoke-static {p1, p2, p3}, Lorg/xbill/DNS/DNSSEC;->checkKeyAndSigRecord(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;Ljava/time/Instant;)V

    .line 1126
    invoke-static {p1, p0}, Lorg/xbill/DNS/DNSSEC;->digestRRset(Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/RRset;)[B

    move-result-object p3

    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getType()I

    move-result p0

    invoke-static {p2, p1, p3, p0}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;[BI)V

    return-void

    .line 1120
    :cond_0
    new-instance p0, Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;

    const-string p1, "invalid protocol"

    const/4 p3, 0x6

    invoke-direct {p0, p2, p1, p3}, Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;-><init>(Lorg/xbill/DNS/DNSKEYRecord;Ljava/lang/String;I)V

    throw p0

    .line 1115
    :cond_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;

    const-string p1, "zone key flag is not set"

    const/16 p3, 0xb

    invoke-direct {p0, p2, p1, p3}, Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;-><init>(Lorg/xbill/DNS/DNSKEYRecord;Ljava/lang/String;I)V

    throw p0
.end method

.method public static verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1094
    invoke-static {p3}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)V

    return-void
.end method

.method static verifyMessage(Lorg/xbill/DNS/Message;[BLorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/SIGRecord;Lorg/xbill/DNS/KEYRecord;Ljava/time/Instant;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/DNSSEC$DNSSECException;
        }
    .end annotation

    .line 1384
    iget v0, p0, Lorg/xbill/DNS/Message;->sig0start:I

    if-eqz v0, :cond_1

    .line 1388
    invoke-static {p2, p4, p5}, Lorg/xbill/DNS/DNSSEC;->checkKeyAndSigRecord(Lorg/xbill/DNS/SIGBase;Lorg/xbill/DNS/KEYBase;Ljava/time/Instant;)V

    .line 1390
    new-instance p5, Lorg/xbill/DNS/DNSOutput;

    invoke-direct {p5}, Lorg/xbill/DNS/DNSOutput;-><init>()V

    .line 1391
    invoke-static {p5, p2}, Lorg/xbill/DNS/DNSSEC;->digestSIG(Lorg/xbill/DNS/DNSOutput;Lorg/xbill/DNS/SIGBase;)V

    if-eqz p3, :cond_0

    .line 1393
    invoke-virtual {p3}, Lorg/xbill/DNS/SIGRecord;->getSignature()[B

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1396
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p3

    invoke-virtual {p3}, Lorg/xbill/DNS/Header;->clone()Lorg/xbill/DNS/Header;

    move-result-object p3

    const/4 v0, 0x3

    .line 1397
    invoke-virtual {p3, v0}, Lorg/xbill/DNS/Header;->decCount(I)V

    .line 1398
    invoke-virtual {p3}, Lorg/xbill/DNS/Header;->toWire()[B

    move-result-object p3

    invoke-virtual {p5, p3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 1400
    iget p0, p0, Lorg/xbill/DNS/Message;->sig0start:I

    const/16 p3, 0xc

    sub-int/2addr p0, p3

    invoke-virtual {p5, p1, p3, p0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    .line 1402
    invoke-virtual {p5}, Lorg/xbill/DNS/DNSOutput;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p4, p2, p0, p1}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/KEYBase;Lorg/xbill/DNS/SIGBase;[BI)V

    return-void

    .line 1385
    :cond_1
    new-instance p0, Lorg/xbill/DNS/DNSSEC$NoSignatureException;

    invoke-direct {p0}, Lorg/xbill/DNS/DNSSEC$NoSignatureException;-><init>()V

    throw p0
.end method

.method private static writeAsn1Int(ILorg/xbill/DNS/DNSOutput;[BI)V
    .locals 1

    const/4 v0, 0x2

    .line 931
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    .line 932
    invoke-virtual {p1, p3}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    if-le p3, p0, :cond_0

    const/4 v0, 0x0

    .line 934
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/DNSOutput;->writeU8(I)V

    :cond_0
    if-lt p3, p0, :cond_1

    .line 937
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    sub-int/2addr p0, p3

    .line 939
    invoke-virtual {p1, p2, p0, p3}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    :goto_0
    return-void
.end method

.method private static writeBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;)V
    .locals 0

    .line 532
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object p1

    .line 533
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void
.end method

.method private static writePaddedBigInteger(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 1

    .line 537
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object p1

    .line 539
    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 543
    array-length v0, p1

    if-ge v0, p2, :cond_0

    .line 544
    array-length v0, p1

    sub-int/2addr p2, v0

    new-array p2, p2, [B

    .line 545
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    return-void

    .line 540
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static writePaddedBigIntegerLittleEndian(Lorg/xbill/DNS/DNSOutput;Ljava/math/BigInteger;I)V
    .locals 1

    .line 552
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->trimByteArray([B)[B

    move-result-object p1

    .line 554
    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 558
    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC;->reverseByteArray([B)V

    .line 559
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    .line 561
    array-length v0, p1

    if-ge v0, p2, :cond_0

    .line 562
    array-length p1, p1

    sub-int/2addr p2, p1

    new-array p1, p2, [B

    .line 563
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([B)V

    :cond_0
    return-void

    .line 555
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
