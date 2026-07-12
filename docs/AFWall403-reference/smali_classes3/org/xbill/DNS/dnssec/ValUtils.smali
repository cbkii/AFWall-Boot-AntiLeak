.class final Lorg/xbill/DNS/dnssec/ValUtils;
.super Ljava/lang/Object;
.source "ValUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;
    }
.end annotation


# static fields
.field public static final ALGORITHM_ENABLED:Ljava/lang/String; = "dnsjava.dnssec.algorithm"

.field public static final ALGORITHM_RSA_MIN_KEY_SIZE:Ljava/lang/String; = "dnsjava.dnssec.algorithm_rsa_min_key_size"

.field public static final DIGEST_ENABLED:Ljava/lang/String; = "dnsjava.dnssec.digest"

.field public static final DIGEST_HARDEN_DOWNGRADE:Ljava/lang/String; = "dnsjava.dnssec.harden_algo_downgrade"

.field public static final DIGEST_PREFERENCE:Ljava/lang/String; = "dnsjava.dnssec.digest_preference"

.field public static final MAX_DS_MATCH_FAILURES_PROPERTY:Ljava/lang/String; = "dnsjava.dnssec.max_ds_match_failures"

.field private static final WILDCARD:Lorg/xbill/DNS/Name;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private config:Ljava/util/Properties;

.field private digestHardenDowngrade:Z

.field private digestPreference:[I

.field private hasEd25519:Z

.field private hasEd448:Z

.field private hasGost:Z

.field private maxDsMatchFailures:I

.field private minRsaKeySize:I

.field private final verifier:Lorg/xbill/DNS/dnssec/DnsSecVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/ValUtils;

    .line 39
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v0, "*"

    .line 50
    invoke-static {v0}, Lorg/xbill/DNS/Name;->fromConstantString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->WILDCARD:Lorg/xbill/DNS/Name;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestPreference:[I

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->config:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestHardenDowngrade:Z

    const/16 v1, 0x400

    iput v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->minRsaKeySize:I

    const/4 v1, 0x4

    iput v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->maxDsMatchFailures:I

    const-string v1, "MessageDigest.GOST3411"

    .line 66
    invoke-static {v1}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasGost:Z

    const-string v1, "KeyFactory.Ed25519"

    .line 67
    invoke-static {v1}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd25519:Z

    const-string v1, "KeyFactory.Ed448"

    .line 68
    invoke-static {v1}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd448:Z

    .line 69
    new-instance v0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;-><init>(Lorg/xbill/DNS/dnssec/ValUtils;)V

    iput-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->verifier:Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    return-void
.end method

.method public static classifyResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/dnssec/ResponseClassification;
    .locals 8

    .line 152
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getCount(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    const/16 v3, 0x2b

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_6

    .line 158
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getCount(I)I

    move-result v0

    if-nez v0, :cond_6

    .line 159
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result v0

    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/RRset;

    .line 166
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 167
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 170
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 171
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 174
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result p1

    if-ne p1, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 179
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    goto :goto_1

    :cond_5
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    :goto_1
    return-object p0

    .line 183
    :cond_6
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 185
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result v0

    if-nez v0, :cond_7

    .line 186
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 187
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    .line 188
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 189
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 191
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 195
    :cond_7
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result p0

    if-eq p0, v2, :cond_8

    .line 196
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->UNKNOWN:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 200
    :cond_8
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getCount(I)I

    move-result p0

    if-nez p0, :cond_9

    .line 201
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 206
    :cond_9
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getType()I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_a

    .line 211
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->ANY:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 215
    :cond_a
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/RRset;

    .line 216
    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    if-ne v6, p0, :cond_c

    .line 217
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->POSITIVE:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 220
    :cond_c
    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_d

    invoke-virtual {v5}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_b

    :cond_d
    if-ne p0, v3, :cond_e

    .line 223
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    :cond_e
    const/4 v4, 0x1

    goto :goto_2

    :cond_f
    if-eqz v4, :cond_11

    .line 229
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getRcode()I

    move-result p0

    if-ne p0, v2, :cond_10

    .line 230
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NAMEERROR:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    .line 232
    :cond_10
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->CNAME_NODATA:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0

    :cond_11
    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v0, "Failed to classify response message:\n{}"

    .line 236
    invoke-interface {p0, v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    sget-object p0, Lorg/xbill/DNS/dnssec/ResponseClassification;->UNKNOWN:Lorg/xbill/DNS/dnssec/ResponseClassification;

    return-object p0
.end method

.method public static closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .line 632
    invoke-static {p0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->longestCommonName(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 633
    invoke-static {p0, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->longestCommonName(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    .line 635
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result p2

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method private dsDigestMatchesDnskey(Lorg/xbill/DNS/DSRecord;Lorg/xbill/DNS/DNSKEYRecord;)Z
    .locals 10

    .line 469
    invoke-virtual {p1}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 474
    :try_start_0
    new-instance v9, Lorg/xbill/DNS/DSRecord;

    sget-object v3, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/DSRecord;->getDClass()I

    move-result v4

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v7

    move-object v2, v9

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/xbill/DNS/DSRecord;-><init>(Lorg/xbill/DNS/Name;IJILorg/xbill/DNS/DNSKEYRecord;)V

    .line 475
    invoke-virtual {v9}, Lorg/xbill/DNS/DSRecord;->getDigest()[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v2, "Hash mismatch: key {} != ds {}"

    .line 482
    invoke-interface {p2, v2, p1, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    sget-object p2, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v0, "Digest generation failed"

    .line 477
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private isKeySizeSupported(Lorg/xbill/DNS/DNSKEYRecord;)Z
    .locals 8

    const/4 v0, 0x0

    .line 1058
    :try_start_0
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1059
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v5, 0xa

    if-eq v2, v5, :cond_0

    const/4 v5, 0x7

    if-eq v2, v5, :cond_0

    const/16 v5, 0x8

    if-eq v2, v5, :cond_0

    return v4

    .line 1065
    :cond_0
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iget v2, p0, Lorg/xbill/DNS/dnssec/ValUtils;->minRsaKeySize:I

    if-lt v1, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    sget-object v5, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v6, "Key size {} for DNSKEY <{}/{}>, alg={}, id={} is less than minimum of {}"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 1070
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    .line 1071
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, v7, v4

    .line 1072
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v7, v4

    .line 1073
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC$Algorithm;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v7, v4

    .line 1074
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x4

    aput-object p1, v7, v1

    iget p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->minRsaKeySize:I

    .line 1075
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v3

    .line 1068
    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/xbill/DNS/DNSSEC$DNSSECException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return v2

    :catch_0
    return v0
.end method

.method private isKeySizeSupported(Lorg/xbill/DNS/RRset;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1042
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 1043
    check-cast v1, Lorg/xbill/DNS/DNSKEYRecord;

    invoke-direct {p0, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->isKeySizeSupported(Lorg/xbill/DNS/DNSKEYRecord;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static longestCommonName(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 4

    .line 593
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 594
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {v1, p0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 595
    new-instance p0, Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-direct {p0, p1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge p1, v2, :cond_1

    .line 597
    new-instance v2, Lorg/xbill/DNS/Name;

    invoke-direct {v2, v1, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 598
    new-instance v3, Lorg/xbill/DNS/Name;

    invoke-direct {v3, p0, p1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 603
    :cond_1
    sget-object p0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    return-object p0
.end method

.method public static nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z
    .locals 4

    .line 664
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v1

    .line 668
    invoke-virtual {p2, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 673
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result p0

    if-nez p0, :cond_1

    return v3

    .line 680
    :cond_1
    invoke-virtual {p2, v0}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x27

    .line 681
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v3

    :cond_2
    const/4 p0, 0x2

    .line 685
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x6

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-nez p0, :cond_3

    return v3

    .line 690
    :cond_3
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 693
    invoke-static {p2, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->strictSubdomain(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Z

    move-result p0

    return p0

    .line 694
    :cond_4
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result p0

    const/4 p1, 0x1

    if-lez p0, :cond_6

    .line 699
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result p0

    if-gez p0, :cond_5

    invoke-static {p2, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->strictSubdomain(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3

    .line 702
    :cond_6
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result p0

    if-gez p0, :cond_7

    invoke-virtual {p2, v1}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result p0

    if-gez p0, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method

.method public static nsecProvesNoDS(Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/SecurityStatus;
    .locals 1

    const/4 v0, 0x6

    .line 961
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/16 p1, 0x2b

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 968
    :cond_1
    sget-object p0, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p0

    :cond_2
    const/4 p1, 0x2

    .line 971
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-nez p0, :cond_3

    .line 974
    sget-object p0, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p0

    .line 978
    :cond_3
    sget-object p0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    return-object p0
.end method

.method public static nsecProvesNoWC(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z
    .locals 2

    .line 716
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 717
    invoke-virtual {p2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    .line 719
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object p2

    .line 720
    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static nsecProvesNodata(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;
    .locals 8

    .line 748
    new-instance v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;

    invoke-direct {v0}, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;-><init>()V

    .line 749
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "NSEC proofed that {} exists"

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_5

    .line 757
    invoke-virtual {p1}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->strictSubdomain(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/xbill/DNS/Name;->compareTo(Lorg/xbill/DNS/Name;)I

    move-result v1

    if-gez v1, :cond_0

    .line 758
    iput-boolean v6, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 767
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 769
    new-instance v1, Lorg/xbill/DNS/Name;

    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-direct {v1, p0, v6}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 773
    invoke-static {p2, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->strictSubdomain(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 774
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string p1, "NSEC proofed wildcard CNAME"

    .line 776
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 777
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 781
    :cond_1
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string p1, "Wrong parent (wildcard) NSEC used"

    .line 785
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 786
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 790
    :cond_2
    invoke-virtual {p1, p3}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 791
    invoke-static {p3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 797
    :cond_3
    iput-object v1, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    .line 798
    iput-boolean v6, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 804
    :cond_4
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 809
    :cond_5
    invoke-virtual {p1, p3}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 810
    invoke-static {p3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 811
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 816
    :cond_6
    invoke-virtual {p1, v4}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string p1, "NSEC proofed CNAME"

    .line 817
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 818
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    :cond_7
    const/16 p0, 0x2b

    if-eq p3, p0, :cond_8

    .line 827
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, v5}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_8

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string p1, "NSEC proofed missing referral"

    .line 828
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 829
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    :cond_8
    if-ne p3, p0, :cond_9

    .line 832
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/NSECRecord;->hasType(I)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-virtual {p0, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string p1, "NSEC from wrong zone"

    .line 833
    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 834
    iput-boolean v7, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0

    .line 838
    :cond_9
    iput-boolean v6, v0, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    return-object v0
.end method

.method public static nsecWildcard(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;)Lorg/xbill/DNS/Name;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/NameTooLongException;
        }
    .end annotation

    .line 651
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    sget-object p1, Lorg/xbill/DNS/dnssec/ValUtils;->WILDCARD:Lorg/xbill/DNS/Name;

    .line 652
    invoke-static {p1, p0}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0
.end method

.method private propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p2, p0, Lorg/xbill/DNS/dnssec/ValUtils;->config:Ljava/util/Properties;

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1137
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static rrsetWildcard(Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/Name;
    .locals 6

    .line 557
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 558
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/RRSIGRecord;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 561
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 562
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/RRSIGRecord;

    invoke-virtual {v4}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v4

    invoke-virtual {v1}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 563
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "failed.wildcard.label_count_mismatch"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 570
    :cond_1
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 573
    invoke-virtual {p0}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 574
    new-instance p0, Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    move-object v0, p0

    .line 577
    :cond_2
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v1}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v1

    sub-int/2addr p0, v1

    if-lez p0, :cond_3

    .line 579
    invoke-virtual {v0, p0}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static setCanonicalNsecOwner(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/RRSIGRecord;)V
    .locals 4

    .line 80
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 86
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v1, -0x2

    .line 90
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 91
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SRRset;->setName(Lorg/xbill/DNS/Name;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result v1

    if-ge v1, v2, :cond_3

    .line 93
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/RRSIGRecord;->getLabels()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->wild(I)Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SRRset;->setName(Lorg/xbill/DNS/Name;)V

    :goto_0
    return-void

    .line 95
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid nsec record"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static strictSubdomain(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Z
    .locals 3

    .line 614
    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 618
    :cond_0
    new-instance v0, Lorg/xbill/DNS/Name;

    invoke-virtual {p0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-direct {v0, p0, v1}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private verifyDnskeysWithDs(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/DSRecord;Ljava/time/Instant;Ljava/util/concurrent/atomic/AtomicInteger;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 11

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Record;

    .line 396
    check-cast v4, Lorg/xbill/DNS/DNSKEYRecord;

    sget-object v8, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    .line 400
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSKEYRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v10

    aput-object v10, v9, v0

    .line 401
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    .line 402
    invoke-virtual {v4}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v5

    const/4 v5, 0x3

    .line 403
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v7

    aput-object v7, v9, v5

    .line 404
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    aput-object v5, v9, v7

    .line 405
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x5

    aput-object v5, v9, v7

    .line 406
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    const-string v5, "Validating DNSKEY {} (footprint={}, alg={}) against DS {} (footprint={}, digest={}, alg={})"

    .line 398
    invoke-interface {v8, v5, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v5

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v7

    if-ne v5, v7, :cond_4

    .line 410
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v5

    invoke-virtual {v4}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v7

    if-eq v5, v7, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 416
    invoke-direct {p0, p2, v4}, Lorg/xbill/DNS/dnssec/ValUtils;->dsDigestMatchesDnskey(Lorg/xbill/DNS/DSRecord;Lorg/xbill/DNS/DNSKEYRecord;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "DS did not match DNSKEY, ignoring"

    .line 417
    invoke-interface {v8, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v5, p0, Lorg/xbill/DNS/dnssec/ValUtils;->maxDsMatchFailures:I

    add-int/2addr v5, v3

    if-le v4, v5, :cond_0

    .line 419
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.ds_max_match"

    new-array p4, v0, [Ljava/lang/Object;

    .line 422
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 429
    invoke-direct {p0, v4}, Lorg/xbill/DNS/dnssec/ValUtils;->isKeySizeSupported(Lorg/xbill/DNS/DNSKEYRecord;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "DS okay but that DNSKEY size is not supported"

    .line 430
    invoke-interface {v8, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lorg/xbill/DNS/dnssec/ValUtils;->verifier:Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    .line 437
    invoke-virtual {v5, p1, v4, p3}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v4

    .line 438
    iget-object v5, v4, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v6, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_4
    :goto_1
    const-string v4, "Footprint or algorithm mismatch, ignoring"

    .line 411
    invoke-interface {v8, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    if-lez v2, :cond_6

    .line 446
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 p3, -0x1

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 449
    :cond_6
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p3

    if-nez p3, :cond_7

    .line 450
    new-instance p3, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p4, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v1, v5, [Ljava/lang/Object;

    .line 455
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, v1, v0

    .line 456
    invoke-virtual {p2}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/DNSSEC$Algorithm;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    const-string p1, "dnskey.no_ds_alg_match"

    .line 453
    invoke-static {p1, v1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    invoke-direct {p3, p4, p2, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p3

    :cond_7
    if-nez v3, :cond_8

    .line 458
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.no_ds_match"

    new-array p4, v0, [Ljava/lang/Object;

    .line 459
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 462
    :cond_8
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.ds_match_mismatch"

    new-array p4, v0, [Ljava/lang/Object;

    .line 465
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method atLeastOneSupportedAlgorithm(Lorg/xbill/DNS/RRset;)Z
    .locals 2

    const/4 v0, 0x0

    .line 988
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 989
    check-cast v1, Lorg/xbill/DNS/DSRecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->isAlgorithmSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method atLeastOneSupportedDigest(Lorg/xbill/DNS/RRset;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1093
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 1094
    check-cast v1, Lorg/xbill/DNS/DSRecord;

    invoke-virtual {v1}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->isDigestSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method favoriteDSDigestID(Lorg/xbill/DNS/dnssec/SRRset;)I
    .locals 8

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestPreference:[I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 501
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    .line 502
    check-cast v0, Lorg/xbill/DNS/DSRecord;

    .line 503
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 504
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->isDigestSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->isAlgorithmSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 506
    invoke-virtual {v0}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    return v1

    .line 512
    :cond_2
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget v4, v0, v3

    .line 513
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/Record;

    .line 514
    check-cast v6, Lorg/xbill/DNS/DSRecord;

    .line 515
    invoke-virtual {v6}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 516
    invoke-virtual {v6}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result p1

    return p1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public hasSignedNsecs(Lorg/xbill/DNS/dnssec/SMessage;)Z
    .locals 3

    const/4 v0, 0x2

    .line 940
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 941
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    :cond_1
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->sigs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public init(Ljava/util/Properties;)V
    .locals 4

    const-string v0, "MessageDigest.GOST3411"

    .line 113
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasGost:Z

    const-string v0, "KeyFactory.Ed25519"

    .line 114
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd25519:Z

    const-string v0, "KeyFactory.Ed448"

    .line 115
    invoke-static {v0}, Ljava/security/Security;->getProviders(Ljava/lang/String;)[Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd448:Z

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->config:Ljava/util/Properties;

    const-string v0, "dnsjava.dnssec.digest_preference"

    .line 117
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, ","

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    array-length v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestPreference:[I

    .line 121
    :goto_3
    array-length v1, v0

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestPreference:[I

    .line 122
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestPreference:[I

    .line 123
    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->isDigestSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported or disabled digest ID in digest preferences"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 130
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dnsjava.dnssec.harden_algo_downgrade"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->digestHardenDowngrade:Z

    iget v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->minRsaKeySize:I

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dnsjava.dnssec.algorithm_rsa_min_key_size"

    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->minRsaKeySize:I

    iget v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->maxDsMatchFailures:I

    .line 138
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dnsjava.dnssec.max_ds_match_failures"

    .line 137
    invoke-virtual {p1, v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->maxDsMatchFailures:I

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->verifier:Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    .line 139
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->init(Ljava/util/Properties;)V

    return-void
.end method

.method isAlgorithmSupported(I)Z
    .locals 2

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dnsjava.dnssec.algorithm."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v1

    :pswitch_1
    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd448:Z

    .line 1029
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :pswitch_2
    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasEd25519:Z

    .line 1027
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :pswitch_3
    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasGost:Z

    .line 1025
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :pswitch_4
    const/4 p1, 0x1

    .line 1023
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :pswitch_5
    iget-object p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->config:Ljava/util/Properties;

    if-nez p1, :cond_0

    return v1

    .line 1016
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method isDigestSupported(I)Z
    .locals 3

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dnsjava.dnssec.digest."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->hasGost:Z

    .line 1122
    invoke-direct {p0, v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->propertyOrTrueWithPrecondition(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_1
    iget-object p1, p0, Lorg/xbill/DNS/dnssec/ValUtils;->config:Ljava/util/Properties;

    if-nez p1, :cond_2

    return v1

    .line 1120
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public nsecProvesNodataDsReply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 10

    .line 854
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 855
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p1

    const/16 v1, 0x2f

    const/4 v2, 0x2

    .line 860
    invoke-virtual {p2, v0, v1, p1, v2}, Lorg/xbill/DNS/dnssec/SMessage;->findRRset(Lorg/xbill/DNS/Name;III)Lorg/xbill/DNS/dnssec/SRRset;

    move-result-object p1

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    .line 863
    invoke-virtual {p0, p1, p3, p4}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p2

    .line 864
    iget-object p3, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object p4, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v1, 0x6

    if-eq p3, p4, :cond_0

    .line 865
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array p4, v4, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    aput-object p2, p4, v5

    const-string p2, "failed.ds.nsec"

    .line 868
    invoke-static {p2, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, v1, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 871
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/NSECRecord;

    .line 872
    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNoDS(Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p1

    .line 873
    sget-object p2, Lorg/xbill/DNS/dnssec/ValUtils$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result p3

    aget p2, p2, p3

    if-eq p2, v4, :cond_2

    if-eq p2, v2, :cond_1

    .line 879
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    const-string p3, "failed.ds.nsec.hasdata"

    new-array p4, v5, [Ljava/lang/Object;

    .line 880
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v1, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 877
    :cond_1
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    const-string p3, "insecure.ds.nsec"

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v3, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 875
    :cond_2
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    const-string p3, "failed.ds.nodelegation"

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v3, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 886
    :cond_3
    new-instance p1, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;-><init>()V

    .line 890
    invoke-virtual {p2, v2, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move-object v2, v1

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/dnssec/SRRset;

    .line 891
    invoke-virtual {p0, p1, p3, p4}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v7

    .line 892
    iget-object v8, v7, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v9, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v8, v9, :cond_4

    .line 893
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    iget-object p2, v7, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    iget p3, v7, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    const-string p4, "failed.ds.nsec.ent"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p4, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p3, p4}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 896
    :cond_4
    invoke-virtual {p1, v5}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xbill/DNS/NSECRecord;

    const/16 v8, 0x2b

    .line 897
    invoke-static {p1, v7, v0, v8}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNodata(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;

    move-result-object v8

    .line 898
    iget-boolean v9, v8, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    if-eqz v9, :cond_6

    .line 900
    iget-object v6, v8, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Lorg/xbill/DNS/NSECRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v6}, Lorg/xbill/DNS/Name;->isWild()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v2, v7

    :cond_5
    const/4 v6, 0x1

    .line 905
    :cond_6
    invoke-static {p1, v7, v0}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 906
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {v7}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    move-object v1, p1

    :cond_7
    move-object p1, v8

    goto :goto_0

    .line 913
    :cond_8
    iget-object p2, p1, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    if-eqz p2, :cond_9

    if-eqz v1, :cond_b

    iget-object p2, p1, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_b

    .line 918
    iget-object p1, p1, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    if-eqz p1, :cond_a

    .line 919
    invoke-static {v2, v0}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNoDS(Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p1

    .line 920
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    const-string p3, "failed.ds.nowildcardproof"

    new-array p4, v5, [Ljava/lang/Object;

    .line 921
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0xc

    invoke-direct {p2, p1, p4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 924
    :cond_a
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "insecure.ds.nsec.ent"

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v3, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 927
    :cond_b
    :goto_1
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "failed.ds.nonconclusive"

    new-array p4, v5, [Ljava/lang/Object;

    .line 930
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-direct {p1, p2, p4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1
.end method

.method public verifyNewDNSKEYs(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SRRset;JLjava/time/Instant;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    .line 257
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 258
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v2

    invoke-static {v1, v2, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v1

    const-string v2, "dnskey.no_name_match"

    new-array v3, v6, [Ljava/lang/Object;

    .line 259
    invoke-static {v2, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v1

    :cond_0
    iget-boolean v5, v0, Lorg/xbill/DNS/dnssec/ValUtils;->digestHardenDowngrade:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    .line 267
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->favoriteDSDigestID(Lorg/xbill/DNS/dnssec/SRRset;)I

    move-result v5

    .line 268
    new-instance v11, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;

    invoke-direct {v11, v0}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;-><init>(Lorg/xbill/DNS/dnssec/ValUtils;)V

    .line 269
    invoke-virtual {v11, v2, v5}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->initDs(Lorg/xbill/DNS/RRset;I)Ljava/util/List;

    move-result-object v12

    sget-object v13, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    new-array v14, v7, [Ljava/lang/Object;

    .line 272
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    aput-object v15, v14, v6

    .line 273
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v10

    .line 274
    invoke-static {v5}, Lorg/xbill/DNS/DNSSEC$Digest;->string(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v9

    const-string v15, "Favorite DigestID for rrset {}/DNSKEY is {} ({})"

    .line 270
    invoke-interface {v13, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    move-object v11, v8

    move-object v12, v11

    .line 283
    :goto_0
    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 284
    invoke-virtual {v2, v6}, Lorg/xbill/DNS/dnssec/SRRset;->rrs(Z)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/xbill/DNS/Record;

    .line 285
    move-object/from16 v7, v18

    check-cast v7, Lorg/xbill/DNS/DSRecord;

    .line 286
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v9

    invoke-virtual {v0, v9}, Lorg/xbill/DNS/dnssec/ValUtils;->isDigestSupported(I)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 289
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 290
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DNSSEC$Digest;->string(I)Ljava/lang/String;

    move-result-object v7

    const-string v6, "Digest ID {} ({}) is not supported"

    .line 287
    invoke-interface {v9, v6, v10, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 294
    :cond_2
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v6

    invoke-virtual {v0, v6}, Lorg/xbill/DNS/dnssec/ValUtils;->isAlgorithmSupported(I)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 297
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 298
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DNSSEC$Algorithm;->string(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Algorithm {} ({}) is not supported"

    .line 295
    invoke-interface {v6, v10, v9, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_4

    .line 302
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v6

    if-eq v6, v5, :cond_4

    sget-object v6, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 305
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 306
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DNSSEC$Digest;->string(I)Ljava/lang/String;

    move-result-object v7

    const-string v10, "Downgrade protection prevents using digest ID {} ({})"

    .line 303
    invoke-interface {v6, v10, v9, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v6, p5

    .line 310
    invoke-direct {v0, v1, v7, v6, v13}, Lorg/xbill/DNS/dnssec/ValUtils;->verifyDnskeysWithDs(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/DSRecord;Ljava/time/Instant;Ljava/util/concurrent/atomic/AtomicInteger;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v8

    .line 311
    iget-object v9, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_5

    sget-object v9, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 314
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 315
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Lorg/xbill/DNS/DNSSEC$Algorithm;->string(I)Ljava/lang/String;

    move-result-object v7

    const-string v15, "Algorithm {} ({}) refused"

    .line 312
    invoke-interface {v9, v15, v10, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto/16 :goto_1

    .line 320
    :cond_5
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    if-lez v9, :cond_6

    sget-object v9, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    .line 321
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v0, "Checked #{} DS"

    invoke-interface {v9, v0, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x1

    .line 329
    :cond_6
    iget-object v0, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v9, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v9, :cond_a

    if-eqz v11, :cond_8

    .line 330
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->setSecure(I)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v9, 0x3

    goto :goto_4

    .line 331
    :cond_8
    :goto_3
    invoke-direct/range {p0 .. p1}, Lorg/xbill/DNS/dnssec/ValUtils;->isKeySizeSupported(Lorg/xbill/DNS/RRset;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    .line 335
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getFootprint()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    .line 336
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getDigestID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v1, v6

    .line 337
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v1, v9

    const-string v5, "DS {} (footprint={}, id={}, alg={}) works, but DNSKEY set contains keys that are unsupported, treat as insecure"

    .line 332
    invoke-interface {v0, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v0, v1, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    return-object v0

    .line 341
    :cond_9
    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1, v0}, Lorg/xbill/DNS/dnssec/SRRset;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    .line 342
    invoke-static {v1, v12}, Lorg/xbill/DNS/dnssec/KeyEntry;->newKeyEntry(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/List;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    return-object v0

    :cond_a
    const/4 v9, 0x3

    if-eqz v11, :cond_b

    .line 344
    iget-object v0, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v10, :cond_b

    .line 345
    invoke-virtual {v7}, Lorg/xbill/DNS/DSRecord;->getAlgorithm()I

    move-result v0

    invoke-virtual {v11, v0}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->setBogus(I)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_c
    if-eqz v15, :cond_d

    if-nez v16, :cond_d

    sget-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "No supported DS records were found -- treating as insecure"

    .line 356
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v0, v1, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 360
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "failed.ds.nodigest"

    invoke-static {v2, v1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 358
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v0

    :cond_d
    if-nez v17, :cond_e

    sget-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "No usable DS records were found -- treating as insecure"

    .line 366
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 367
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v0, v1, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 370
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "failed.ds.no_usable_digest"

    invoke-static {v2, v1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 368
    invoke-virtual {v0, v2, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v0

    :cond_e
    sget-object v0, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const-string v1, "Failed to match any usable DS to a DNSKEY"

    .line 375
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    if-eqz v11, :cond_f

    .line 377
    invoke-virtual {v11}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->missing()I

    move-result v1

    if-eqz v1, :cond_f

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 382
    invoke-static {v1}, Lorg/xbill/DNS/DNSSEC$Algorithm;->string(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Missing verification of DNSKEY signature with algorithm {} ({})"

    .line 379
    invoke-interface {v0, v6, v5, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 386
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v0, v1, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v0

    .line 387
    iget v1, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    iget-object v2, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v0
.end method

.method public verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 2

    .line 535
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v0, v1, :cond_0

    sget-object p2, Lorg/xbill/DNS/dnssec/ValUtils;->log:Lorg/slf4j/Logger;

    const/4 p3, 0x3

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, p3, v0

    .line 539
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    .line 540
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    aput-object p1, p3, v0

    const-string p1, "RRset <{}/{}/{}> previously found to be SECURE"

    .line 536
    invoke-interface {p2, p1, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 p3, -0x1

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValUtils;->verifier:Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    .line 544
    invoke-virtual {v0, p1, p2, p3}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->verify(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p2

    .line 545
    iget-object p3, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {p1, p3}, Lorg/xbill/DNS/dnssec/SRRset;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    return-object p2
.end method
