.class final Lorg/xbill/DNS/dnssec/DnsSecVerifier;
.super Ljava/lang/Object;
.source "DnsSecVerifier.java"


# static fields
.field public static final MAX_VALIDATE_RRSIGS_PROPERTY:Ljava/lang/String; = "dnsjava.dnssec.max_validate_rrsigs"

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private maxValidateRRsigs:I

.field private final valUtils:Lorg/xbill/DNS/dnssec/ValUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;

    .line 33
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/dnssec/ValUtils;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    return-void
.end method

.method private findKey(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/RRset;",
            "Lorg/xbill/DNS/RRSIGRecord;",
            ")",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/DNSKEYRecord;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    .line 70
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p2

    .line 71
    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    const-string v1, "Could not find appropriate key because incorrect keyset was supplied. Wanted: {}, got: {}"

    .line 68
    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 75
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getFootprint()I

    move-result v0

    .line 76
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result p2

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/Record;

    .line 79
    check-cast v2, Lorg/xbill/DNS/DNSKEYRecord;

    .line 80
    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getAlgorithm()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private verifySignature(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 6

    const-string v0, "dnskey.invalid"

    .line 101
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    if-nez v1, :cond_0

    sget-object p3, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    .line 102
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p4

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const-string v1, "Signer name {} is off-tree for {}"

    invoke-interface {p3, v1, p4, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    new-instance p3, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p4, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v0, v2, [Ljava/lang/Object;

    .line 106
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p2

    aput-object p2, v0, v5

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "dnskey.key_offtree"

    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, v4, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p3

    .line 109
    :cond_0
    invoke-direct {p0, p3, p2}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->findKey(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;)Ljava/util/List;

    move-result-object p3

    .line 111
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/xbill/DNS/DNSKEYRecord;

    .line 113
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)V

    .line 114
    invoke-static {p1, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->setCanonicalNsecOwner(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/RRSIGRecord;)V

    .line 115
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 p4, -0x1

    const/4 v1, 0x0

    invoke-direct {p2, p3, p4, v1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/DNSSEC$KeyMismatchException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xbill/DNS/DNSSEC$SignatureExpiredException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xbill/DNS/DNSSEC$DNSSECException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    sget-object p3, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Object;

    .line 135
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, p4, v5

    .line 136
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p4, v3

    .line 137
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p4, v2

    const/4 p1, 0x3

    aput-object p2, p4, p1

    const-string p1, "Failed to validate RRset <{}/{}/{}>"

    .line 133
    invoke-interface {p3, p1, p4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array p3, v5, [Ljava/lang/Object;

    .line 140
    invoke-static {v0, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    :catch_1
    move-exception p1

    .line 130
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    .line 131
    invoke-virtual {p1}, Lorg/xbill/DNS/DNSSEC$InvalidDnskeyException;->getEdeCode()I

    move-result p1

    new-array p4, v5, [Ljava/lang/Object;

    invoke-static {v0, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p3, p1, p4}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 125
    :catch_2
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.not_yet_valid"

    new-array p4, v5, [Ljava/lang/Object;

    .line 128
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p1, p2, p4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 120
    :catch_3
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.expired"

    new-array p4, v5, [Ljava/lang/Object;

    .line 123
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x7

    invoke-direct {p1, p2, p4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    .line 117
    :catch_4
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string p3, "dnskey.no_match"

    new-array p4, v5, [Ljava/lang/Object;

    .line 118
    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, v4, p3}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1

    :cond_1
    sget-object p1, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    const-string p3, "Could not find appropriate key for {}"

    .line 144
    invoke-interface {p1, p3, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    new-instance p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array p4, v3, [Ljava/lang/Object;

    .line 148
    invoke-virtual {p2}, Lorg/xbill/DNS/RRSIGRecord;->getSigner()Lorg/xbill/DNS/Name;

    move-result-object p2

    aput-object p2, p4, v5

    const-string p2, "dnskey.no_key"

    invoke-static {p2, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0x9

    invoke-direct {p1, p3, p4, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public init(Ljava/util/Properties;)V
    .locals 2

    const-string v0, "dnsjava.dnssec.max_validate_rrsigs"

    const-string v1, "8"

    .line 53
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->maxValidateRRsigs:I

    return-void
.end method

.method public verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 17

    .line 233
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->sigs()Ljava/util/List;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    sget-object v0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    new-array v1, v2, [Ljava/lang/Object;

    .line 237
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    aput-object v2, v1, v5

    .line 238
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 239
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "RRset <{}/{}/{}> failed to verify due to lack of signatures"

    .line 235
    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v2, v3, [Ljava/lang/Object;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "validate.bogus.missingsig_named"

    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v0

    .line 248
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    move-object v7, v6

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x6

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/xbill/DNS/RRSIGRecord;

    .line 250
    invoke-virtual {v8}, Lorg/xbill/DNS/RRSIGRecord;->getFootprint()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/DNSKEYRecord;->getFootprint()I

    move-result v11

    if-eq v10, v11, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v7, v0, 0x1

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 256
    :try_start_0
    invoke-static {v10, v8, v11, v12}, Lorg/xbill/DNS/DNSSEC;->verify(Lorg/xbill/DNS/RRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/DNSKEYRecord;Ljava/time/Instant;)V

    .line 257
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v13, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v14, -0x1

    invoke-direct {v0, v13, v14, v6}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/xbill/DNS/DNSSEC$DNSSECException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v13, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    .line 261
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    aput-object v15, v14, v5

    .line 262
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v15

    invoke-static {v15}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    .line 263
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v15

    invoke-static {v15}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    .line 264
    invoke-virtual {v8}, Lorg/xbill/DNS/RRSIGRecord;->getFootprint()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v14, v2

    const/4 v8, 0x4

    aput-object v0, v14, v8

    const-string v8, "Failed to validate RRset <{}/{}/{}> with signature {}"

    .line 259
    invoke-interface {v13, v8, v14}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v8, p0

    iget v14, v8, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->maxValidateRRsigs:I

    if-le v7, v14, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    .line 272
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, v0, v5

    .line 273
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 274
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "RRset <{}/{}/{}> failed to verify: too many signatures"

    .line 270
    invoke-interface {v13, v1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    new-instance v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v2, v3, [Ljava/lang/Object;

    .line 278
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "validate.bogus.rrsigtoomany"

    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v0

    :cond_2
    move/from16 v16, v7

    move-object v7, v0

    move/from16 v0, v16

    goto/16 :goto_0

    :cond_3
    move-object/from16 v8, p0

    move-object/from16 v10, p1

    sget-object v1, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    new-array v2, v2, [Ljava/lang/Object;

    .line 284
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    aput-object v6, v2, v5

    .line 285
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getDClass()I

    move-result v6

    invoke-static {v6}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 286
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v4

    invoke-static {v4}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "RRset <{}/{}/{}> failed to verify: all signatures were BOGUS"

    .line 282
    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_4

    const/16 v9, 0x9

    const-string v0, "dnskey.no_ds_match"

    goto :goto_1

    .line 292
    :cond_4
    instance-of v0, v7, Lorg/xbill/DNS/DNSSEC$SignatureExpiredException;

    if-eqz v0, :cond_5

    const/4 v9, 0x7

    const-string v0, "dnskey.expired"

    goto :goto_1

    .line 295
    :cond_5
    instance-of v0, v7, Lorg/xbill/DNS/DNSSEC$SignatureNotYetValidException;

    if-eqz v0, :cond_6

    const/16 v9, 0x8

    const-string v0, "dnskey.not_yet_valid"

    goto :goto_1

    :cond_6
    const-string v0, "dnskey.invalid"

    .line 300
    :goto_1
    new-instance v1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v9, v0}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object v1
.end method

.method public verify(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;
    .locals 11

    .line 162
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->sigs()Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    sget-object p2, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    new-array p3, v2, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    aput-object v0, p3, v4

    .line 167
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    .line 168
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    const-string v0, "RRset <{}/{}/{}> failed to verify due to a lack of signatures"

    .line 164
    invoke-interface {p2, v0, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v0, v3, [Ljava/lang/Object;

    .line 172
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "validate.bogus.missingsig_named"

    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    invoke-direct {p2, p3, v0, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    .line 176
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->getAlgo()Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 177
    new-instance v1, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;

    iget-object v7, p0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    invoke-direct {v1, v7}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;-><init>(Lorg/xbill/DNS/dnssec/ValUtils;)V

    .line 178
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->getAlgo()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->initList(Ljava/util/List;)V

    .line 179
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->getNum()I

    move-result v7

    if-nez v7, :cond_2

    sget-object p2, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    const-string p3, "{} has no known algorithms"

    .line 180
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v0, v5, [Ljava/lang/Object;

    .line 184
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, v0, v4

    const-string p1, "validate.insecure.noalg"

    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, v5, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    :cond_1
    move-object v1, v6

    .line 190
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/xbill/DNS/RRSIGRecord;

    .line 191
    invoke-direct {p0, p1, v6, p2, p3}, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->verifySignature(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/RRSIGRecord;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v8

    .line 192
    iget-object v9, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_4

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v6}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->setSecure(I)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    return-object v8

    :cond_4
    if-eqz v1, :cond_5

    .line 196
    iget-object v9, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v9, v10, :cond_5

    .line 197
    invoke-virtual {v6}, Lorg/xbill/DNS/RRSIGRecord;->getAlgorithm()I

    move-result v6

    invoke-virtual {v1, v6}, Lorg/xbill/DNS/dnssec/AlgorithmRequirements;->setBogus(I)V

    :cond_5
    add-int/2addr v7, v5

    iget v6, p0, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->maxValidateRRsigs:I

    if-le v7, v6, :cond_6

    sget-object p2, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    new-array p3, v2, [Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    aput-object v0, p3, v4

    .line 205
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    .line 206
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    const-string v0, "RRset <{}/{}/{}> failed to verify: too many signatures"

    .line 202
    invoke-interface {p2, v0, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    sget-object p3, Lorg/xbill/DNS/dnssec/SecurityStatus;->BOGUS:Lorg/xbill/DNS/dnssec/SecurityStatus;

    new-array v0, v3, [Ljava/lang/Object;

    .line 210
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v5

    const-string p1, "validate.bogus.rrsigtoomany"

    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-direct {p2, p3, v0, p1}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;-><init>(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2

    :cond_6
    move-object v6, v8

    goto :goto_0

    :cond_7
    sget-object p2, Lorg/xbill/DNS/dnssec/DnsSecVerifier;->log:Lorg/slf4j/Logger;

    new-array p3, v2, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    aput-object v0, p3, v4

    .line 217
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v5

    .line 218
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    const-string p1, "RRset <{}/{}/{}> failed to verify: all signatures are BOGUS"

    .line 214
    invoke-interface {p2, p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method
