.class public final Lorg/xbill/DNS/dnssec/ValidatingResolver;
.super Ljava/lang/Object;
.source "ValidatingResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# static fields
.field private static final DEFAULT_TA_BAD_KEY_TTL:J = 0x3cL

.field public static final TRUST_ANCHOR_FILE_PROPERTY:Ljava/lang/String; = "dnsjava.dnssec.trust_anchor_file"

.field public static final VALIDATION_REASON_QCLASS:I = 0xff00

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final clock:Ljava/time/Clock;

.field private final headResolver:Lorg/xbill/DNS/Resolver;

.field private isAddReasonToAdditional:Z

.field private final keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

.field private final n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

.field private final trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

.field private final valUtils:Lorg/xbill/DNS/dnssec/ValUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;

    .line 61
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Resolver;)V
    .locals 1

    .line 114
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/dnssec/ValidatingResolver;-><init>(Lorg/xbill/DNS/Resolver;Ljava/time/Clock;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Resolver;Ljava/time/Clock;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->isAddReasonToAdditional:Z

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    const p2, 0x8000

    const/4 v0, 0x0

    new-array v1, v0, [Lorg/xbill/DNS/EDNSOption;

    .line 127
    invoke-interface {p1, v0, v0, p2, v1}, Lorg/xbill/DNS/Resolver;->setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V

    .line 128
    invoke-interface {p1, v0}, Lorg/xbill/DNS/Resolver;->setIgnoreTruncation(Z)V

    .line 130
    new-instance p1, Lorg/xbill/DNS/dnssec/KeyCache;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/KeyCache;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 131
    new-instance p1, Lorg/xbill/DNS/dnssec/ValUtils;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/ValUtils;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 132
    new-instance p1, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 133
    new-instance p1, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/DefaultTrustAnchorStore;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

    .line 135
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->init(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v0, "Could not initialize from system properties"

    .line 137
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private addValidationReasonTxtRecord(Lorg/xbill/DNS/Message;Ljava/lang/String;)V
    .locals 11

    .line 1477
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0xff

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    mul-int/lit16 v4, v3, 0xff

    .line 1479
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/lit16 v5, v2, 0xff

    .line 1480
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    move v2, v3

    goto :goto_0

    .line 1483
    :cond_0
    new-instance p2, Lorg/xbill/DNS/TXTRecord;

    sget-object v6, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const v7, 0xff00

    const-wide/16 v8, 0x0

    .line 1484
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Lorg/xbill/DNS/TXTRecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/util/List;)V

    const/4 v0, 0x3

    .line 1483
    invoke-virtual {p1, p2, v0}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method

.method private applyEdeToOpt(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;)V
    .locals 8

    .line 1448
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getEdeReason()I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 1452
    :cond_0
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    .line 1454
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1455
    new-instance v1, Lorg/xbill/DNS/ExtendedErrorCodeOption;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getEdeReason()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getBogusReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/xbill/DNS/ExtendedErrorCodeOption;-><init>(ILjava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    if-eqz v0, :cond_1

    .line 1458
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getOptions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda14;

    invoke-direct {v2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda14;-><init>()V

    .line 1459
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 1460
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 1457
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1461
    new-instance v7, Lorg/xbill/DNS/OPTRecord;

    .line 1463
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getPayloadSize()I

    move-result v2

    .line 1464
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getExtendedRcode()I

    move-result v3

    .line 1465
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getVersion()I

    move-result v4

    .line 1466
    invoke-virtual {v0}, Lorg/xbill/DNS/OPTRecord;->getFlags()I

    move-result v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 1468
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lorg/xbill/DNS/Message;->removeRecord(Lorg/xbill/DNS/Record;I)Z

    goto :goto_0

    .line 1470
    :cond_1
    new-instance v7, Lorg/xbill/DNS/OPTRecord;

    const/16 v2, 0x500

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/OPTRecord;-><init>(IIIILjava/util/List;)V

    .line 1472
    :goto_0
    invoke-virtual {p2, v7, p1}, Lorg/xbill/DNS/Message;->addRecord(Lorg/xbill/DNS/Record;I)V

    return-void
.end method

.method private dsResponseToKE(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/KeyEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 9

    .line 1008
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 1009
    invoke-virtual {p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    .line 1012
    invoke-static {p2, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->classifyResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/dnssec/ResponseClassification;

    move-result-object v2

    const-wide/16 v3, 0x3c

    .line 1014
    invoke-static {v0, v1, v3, v4}, Lorg/xbill/DNS/dnssec/KeyEntry;->newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v3

    .line 1015
    sget-object v4, Lorg/xbill/DNS/dnssec/ValidatingResolver$1;->$SwitchMap$org$xbill$DNS$dnssec$ResponseClassification:[I

    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/ResponseClassification;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v7, 0x2

    const/4 v8, 0x6

    if-eq v4, v7, :cond_1

    const/4 v0, 0x3

    if-eq v4, v0, :cond_0

    const/4 v0, 0x4

    if-eq v4, v0, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v2, p1, v5

    const-string p2, "failed.ds.notype"

    .line 1058
    invoke-static {p2, p1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-virtual {v3, v8, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v3

    .line 1052
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->dsResponseToKeForNodata(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/KeyEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p2, 0x5

    .line 1041
    invoke-virtual {p1, v0, p2, v1}, Lorg/xbill/DNS/dnssec/SMessage;->findAnswerRRset(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/dnssec/SRRset;

    move-result-object p1

    iget-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 1042
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p2, p1, p3, v0}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p1

    .line 1043
    iget-object p1, p1, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    const-string p1, "failed.ds.cname"

    new-array p2, v5, [Ljava/lang/Object;

    .line 1047
    invoke-static {p1, p2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v8, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v3

    :cond_3
    const/16 p2, 0x2b

    .line 1019
    invoke-virtual {p1, v0, p2, v1}, Lorg/xbill/DNS/dnssec/SMessage;->findAnswerRRset(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/dnssec/SRRset;

    move-result-object p1

    iget-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 1020
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {p2, p1, p3, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p2

    .line 1021
    iget-object p3, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p3, v2, :cond_4

    .line 1022
    iget p1, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    iget-object p2, p2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    invoke-virtual {v3, p1, p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v3

    :cond_4
    iget-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 1026
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->atLeastOneSupportedAlgorithm(Lorg/xbill/DNS/RRset;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1027
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getTTL()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v0, p2, v5

    const-string p3, "insecure.ds.noalgorithms"

    .line 1030
    invoke-static {p3, p2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1028
    invoke-virtual {p1, v6, p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object p1

    :cond_5
    sget-object p2, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string p3, "DS RRset was good"

    .line 1035
    invoke-interface {p2, p3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1036
    invoke-static {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->newKeyEntry(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    return-object p1
.end method

.method private dsResponseToKeForNodata(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/KeyEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1075
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 1076
    invoke-virtual/range {p2 .. p2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    const-wide/16 v5, 0x3c

    .line 1077
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/dnssec/KeyEntry;->newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v7

    iget-object v8, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 1079
    invoke-virtual {v8, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->hasSignedNsecs(Lorg/xbill/DNS/dnssec/SMessage;)Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_0

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v3, v1, v10

    const-string v2, "failed.ds.nonsec"

    .line 1081
    invoke-static {v2, v1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 1080
    invoke-virtual {v7, v2, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v7

    :cond_0
    iget-object v8, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v11, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 1087
    invoke-static {v11}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v11

    move-object/from16 v12, p2

    invoke-virtual {v8, v12, v1, v2, v11}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNodataDsReply(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v8

    .line 1088
    sget-object v11, Lorg/xbill/DNS/dnssec/ValidatingResolver$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    iget-object v12, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v9, :cond_b

    const/4 v6, 0x2

    if-eq v11, v6, :cond_a

    const/4 v13, 0x3

    if-eq v11, v13, :cond_9

    const/16 v8, 0x32

    .line 1104
    invoke-virtual {v1, v6, v8}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(II)Ljava/util/List;

    move-result-object v1

    .line 1105
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1108
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v15, -0x1

    move-wide v14, v15

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/xbill/DNS/dnssec/SRRset;

    iget-object v5, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v10, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 1112
    invoke-static {v10}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v5, v12, v2, v10}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v5

    .line 1113
    iget-object v5, v5, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v10, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v5, v10, :cond_1

    sget-object v5, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v10, "Skipping bad NSEC3"

    .line 1117
    invoke-interface {v5, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    :goto_1
    const/4 v10, 0x0

    goto :goto_0

    .line 1121
    :cond_1
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v11

    const-wide/16 v17, 0x0

    cmp-long v5, v14, v17

    if-ltz v5, :cond_2

    .line 1122
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getTTL()J

    move-result-wide v17

    cmp-long v5, v17, v14

    if-gez v5, :cond_3

    .line 1123
    :cond_2
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getTTL()J

    move-result-wide v14

    .line 1126
    :cond_3
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1129
    :cond_4
    new-instance v1, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    invoke-direct {v1}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;-><init>()V

    .line 1130
    sget-object v2, Lorg/xbill/DNS/dnssec/ValidatingResolver$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    iget-object v5, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    invoke-virtual {v5, v8, v3, v11, v1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveNoDS(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result v1

    aget v1, v2, v1

    if-eq v1, v9, :cond_7

    if-eq v1, v6, :cond_7

    if-eq v1, v13, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const-string v1, "unknown.ds.nsec3"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1145
    invoke-static {v1, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v7, v3, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v7

    :cond_5
    sget-object v1, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v2, "NSEC3s for the referral proved no delegation"

    .line 1139
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x6

    const-string v1, "failed.ds.nsec3"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1142
    invoke-static {v1, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v3, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v7

    :cond_7
    const/4 v2, 0x0

    .line 1135
    invoke-static {v3, v4, v14, v15}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v1

    const-string v3, "insecure.ds.nsec3"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1136
    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v1

    :cond_8
    const/4 v2, 0x0

    const-string v1, "failed.ds.unknown"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1152
    invoke-static {v1, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v7, v2, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v7

    .line 1096
    :cond_9
    iget v1, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    iget-object v2, v8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v7

    :cond_a
    const/4 v1, 0x0

    return-object v1

    :cond_b
    const/4 v2, 0x0

    .line 1090
    invoke-static {v3, v4, v5, v6}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object v1

    const-string v3, "insecure.ds.nsec"

    new-array v2, v2, [Ljava/lang/Object;

    .line 1091
    invoke-static {v3, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    return-object v1
.end method

.method private static errorMessage(Lorg/xbill/DNS/Message;I)Lorg/xbill/DNS/dnssec/SMessage;
    .locals 2

    .line 1496
    new-instance v0, Lorg/xbill/DNS/dnssec/SMessage;

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Header;->getID()I

    move-result v1

    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/xbill/DNS/dnssec/SMessage;-><init>(ILorg/xbill/DNS/Record;)V

    .line 1497
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SMessage;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p0

    .line 1498
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Header;->setRcode(I)V

    const/4 p1, 0x0

    .line 1499
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    return-object v0
.end method

.method private failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "TT;>;"
        }
    .end annotation

    .line 707
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 708
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method static synthetic lambda$applyEdeToOpt$19(Lorg/xbill/DNS/EDNSOption;)Z
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lorg/xbill/DNS/EDNSOption;->getCode()I

    move-result p0

    const/16 v0, 0xf

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$prepareFindKey$11(Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/lang/Void;)Lorg/xbill/DNS/dnssec/KeyEntry;
    .locals 0

    .line 918
    iget-object p0, p0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    return-object p0
.end method

.method static synthetic lambda$sendRequest$10(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/dnssec/SMessage;
    .locals 1

    .line 886
    new-instance v0, Lorg/xbill/DNS/dnssec/SMessage;

    invoke-virtual {p1, p0}, Lorg/xbill/DNS/Message;->normalize(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xbill/DNS/dnssec/SMessage;-><init>(Lorg/xbill/DNS/Message;)V

    return-object v0
.end method

.method static synthetic lambda$validateNameErrorResponse$6(Lorg/xbill/DNS/dnssec/SMessage;Z)V
    .locals 3

    .line 823
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SMessage;->getStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 824
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SMessage;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/xbill/DNS/Header;->setRcode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 830
    invoke-virtual {p0}, Lorg/xbill/DNS/dnssec/SMessage;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "failed.nxdomain.exists"

    .line 829
    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 828
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "failed.nxdomain.haswildcard"

    new-array v0, v2, [Ljava/lang/Object;

    .line 834
    invoke-static {p1, v0}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$validateNameErrorResponse$8(Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private prepareFindKey(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/dnssec/KeyEntry;",
            ">;"
        }
    .end annotation

    .line 890
    new-instance v0, Lorg/xbill/DNS/dnssec/FindKeyState;

    invoke-direct {v0}, Lorg/xbill/DNS/dnssec/FindKeyState;-><init>()V

    .line 891
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    .line 892
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    iput v1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->qclass:I

    .line 894
    iget-object v1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    if-nez v1, :cond_0

    .line 895
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    iput-object v1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    :cond_0
    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

    .line 898
    iget-object v2, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/xbill/DNS/dnssec/TrustAnchorStore;->find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/RRset;

    move-result-object v1

    if-nez v1, :cond_1

    .line 901
    iget-object p2, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    .line 902
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result p1

    const-wide/16 v0, 0x3c

    invoke-static {p2, p1, v0, v1}, Lorg/xbill/DNS/dnssec/KeyEntry;->newNullKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    .line 903
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 906
    :cond_1
    new-instance v2, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-direct {v2, v1}, Lorg/xbill/DNS/dnssec/SRRset;-><init>(Lorg/xbill/DNS/RRset;)V

    .line 907
    sget-object v3, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/dnssec/SRRset;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 908
    iget-object v4, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Lorg/xbill/DNS/dnssec/KeyCache;->find(Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    iput-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 909
    iget-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 910
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    iget-object v3, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isGood()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 912
    :cond_2
    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p1

    const/16 v3, 0x2b

    if-ne p1, v3, :cond_3

    .line 913
    iput-object v2, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    const/4 p1, 0x0

    .line 914
    iput-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 915
    new-instance p1, Lorg/xbill/DNS/Name;

    invoke-virtual {v1}, Lorg/xbill/DNS/RRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p1, v1, v2}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    iput-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->currentDSKeyName:Lorg/xbill/DNS/Name;

    .line 918
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processFindKey(Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda21;

    invoke-direct {p2, v0}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda21;-><init>(Lorg/xbill/DNS/dnssec/FindKeyState;)V

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 920
    :cond_3
    invoke-static {v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->newKeyEntry(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    iput-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 921
    iget-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    sget-object p2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/dnssec/KeyEntry;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 922
    iget-object p2, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/dnssec/KeyCache;->store(Lorg/xbill/DNS/dnssec/KeyEntry;)V

    .line 926
    :cond_4
    iget-object p1, v0, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private processDNSKEYResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Lorg/xbill/DNS/dnssec/FindKeyState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1194
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 1195
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p1

    const/16 v1, 0x30

    .line 1197
    invoke-virtual {p2, v0, v1, p1}, Lorg/xbill/DNS/dnssec/SMessage;->findAnswerRRset(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/dnssec/SRRset;

    move-result-object v3

    const/4 p2, 0x0

    if-nez v3, :cond_0

    const-wide/16 v1, 0x3c

    .line 1200
    invoke-static {v0, p1, v1, v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->newBadKeyEntry(Lorg/xbill/DNS/Name;IJ)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    iput-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 1201
    iget-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object v0, p3, p4

    const-string p4, "dnskey.no_rrset"

    .line 1202
    invoke-static {p4, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x9

    .line 1201
    invoke-virtual {p1, p4, p3}, Lorg/xbill/DNS/dnssec/KeyEntry;->setBadReason(ILjava/lang/String;)V

    .line 1203
    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 1206
    iget-object v4, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    const-wide/16 v5, 0x3c

    iget-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 1208
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v7

    .line 1207
    invoke-virtual/range {v2 .. v7}, Lorg/xbill/DNS/dnssec/ValUtils;->verifyNewDNSKEYs(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SRRset;JLjava/time/Instant;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    iput-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 1212
    iget-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isGood()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1213
    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 1217
    iget-object p2, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {p1, p2}, Lorg/xbill/DNS/dnssec/KeyCache;->store(Lorg/xbill/DNS/dnssec/KeyEntry;)V

    .line 1220
    invoke-direct {p0, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processFindKey(Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private processDSResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Lorg/xbill/DNS/dnssec/FindKeyState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1165
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x0

    .line 1167
    iput-object v1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->emptyDSName:Lorg/xbill/DNS/Name;

    .line 1168
    iput-object v1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    .line 1170
    iget-object v2, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-direct {p0, p2, p1, v2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->dsResponseToKE(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/KeyEntry;)Lorg/xbill/DNS/dnssec/KeyEntry;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1173
    iput-object v0, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->emptyDSName:Lorg/xbill/DNS/Name;

    goto :goto_0

    .line 1174
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isGood()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1175
    iput-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    .line 1176
    new-instance p2, Lorg/xbill/DNS/Name;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    iput-object p2, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->currentDSKeyName:Lorg/xbill/DNS/Name;

    .line 1189
    :goto_0
    invoke-direct {p0, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processFindKey(Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 1180
    :cond_1
    iput-object p1, p3, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    .line 1181
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->isNull()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 1182
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/KeyCache;->store(Lorg/xbill/DNS/dnssec/KeyEntry;)V

    .line 1186
    :cond_2
    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private processFindKey(Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/FindKeyState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 940
    iget v0, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->qclass:I

    .line 941
    iget-object v1, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->signerName:Lorg/xbill/DNS/Name;

    .line 942
    sget-object v2, Lorg/xbill/DNS/Name;->empty:Lorg/xbill/DNS/Name;

    .line 943
    iget-object v3, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    if-eqz v3, :cond_0

    .line 944
    iget-object v2, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->keyEntry:Lorg/xbill/DNS/dnssec/KeyEntry;

    invoke-virtual {v2}, Lorg/xbill/DNS/dnssec/KeyEntry;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 947
    :cond_0
    iget-object v3, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->currentDSKeyName:Lorg/xbill/DNS/Name;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 948
    iget-object v2, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->currentDSKeyName:Lorg/xbill/DNS/Name;

    .line 949
    iput-object v4, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->currentDSKeyName:Lorg/xbill/DNS/Name;

    .line 953
    :cond_1
    invoke-virtual {v2, v1}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 954
    invoke-static {v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 957
    :cond_2
    iget-object v3, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->emptyDSName:Lorg/xbill/DNS/Name;

    if-eqz v3, :cond_3

    .line 958
    iget-object v2, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->emptyDSName:Lorg/xbill/DNS/Name;

    .line 962
    :cond_3
    invoke-virtual {v1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v3

    .line 963
    invoke-virtual {v2}, Lorg/xbill/DNS/Name;->labels()I

    move-result v5

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    if-gez v3, :cond_4

    .line 968
    invoke-static {v4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 971
    :cond_4
    new-instance v4, Lorg/xbill/DNS/Name;

    invoke-direct {v4, v1, v3}, Lorg/xbill/DNS/Name;-><init>(Lorg/xbill/DNS/Name;I)V

    sget-object v3, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    aput-object v2, v6, v5

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const-string v1, "Key search: targetKeyName = {}, currentKeyName = {}, nextKeyName = {}"

    .line 972
    invoke-interface {v3, v1, v6}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    iget-object v1, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 988
    :cond_5
    iget-object v1, p1, Lorg/xbill/DNS/dnssec/FindKeyState;->dsRRset:Lorg/xbill/DNS/dnssec/SRRset;

    .line 989
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 990
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->sendRequest(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)V

    .line 991
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    const/16 v1, 0x2b

    .line 981
    invoke-static {v4, v1, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 982
    invoke-direct {p0, v0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->sendRequest(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda8;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)V

    .line 983
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private processFinishedState(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/dnssec/SMessage;
    .locals 6

    .line 1296
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/SMessage;->getStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    .line 1297
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/SMessage;->getBogusReason()Ljava/lang/String;

    move-result-object v1

    .line 1298
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/SMessage;->getEdeReason()I

    move-result v2

    .line 1299
    sget-object v3, Lorg/xbill/DNS/dnssec/ValidatingResolver$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    const/4 p1, 0x5

    if-ne v3, p1, :cond_0

    goto :goto_1

    .line 1317
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unexpected security status"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1303
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/SMessage;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p2

    invoke-virtual {p2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, v5, :cond_2

    goto :goto_0

    :cond_2
    move v4, p2

    .line 1308
    :cond_3
    :goto_0
    invoke-static {p1, v4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->errorMessage(Lorg/xbill/DNS/Message;I)Lorg/xbill/DNS/dnssec/SMessage;

    move-result-object p2

    goto :goto_1

    .line 1311
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/dnssec/SMessage;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lorg/xbill/DNS/Header;->setFlag(I)V

    .line 1320
    :cond_5
    :goto_1
    invoke-virtual {p2, v0, v2, v1}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-object p2
.end method

.method private processValidate(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            ">;"
        }
    .end annotation

    .line 1225
    invoke-static {p1, p2}, Lorg/xbill/DNS/dnssec/ValUtils;->classifyResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/dnssec/ResponseClassification;

    move-result-object v0

    .line 1226
    sget-object v1, Lorg/xbill/DNS/dnssec/ResponseClassification;->REFERRAL:Lorg/xbill/DNS/dnssec/ResponseClassification;

    if-eq v0, v1, :cond_0

    .line 1227
    invoke-direct {p0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->removeSpuriousAuthority(Lorg/xbill/DNS/dnssec/SMessage;)V

    .line 1230
    :cond_0
    new-instance v6, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    invoke-direct {v6}, Lorg/xbill/DNS/dnssec/Nsec3ValidationState;-><init>()V

    .line 1232
    sget-object v1, Lorg/xbill/DNS/dnssec/ValidatingResolver$1;->$SwitchMap$org$xbill$DNS$dnssec$ResponseClassification:[I

    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/ResponseClassification;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "validate.response.unknown"

    .line 1282
    invoke-static {v0, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1283
    invoke-static {p3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p3

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Validating a cname_nxdomain response"

    .line 1266
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1268
    invoke-direct {p0, p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda6;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda6;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)V

    .line 1269
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p3

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Validating a CNAME_NODATA response"

    .line 1246
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1248
    invoke-direct {p0, p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)V

    .line 1249
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p3

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Validating a nxdomain response"

    .line 1261
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0, p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNameErrorResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p3

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Validating a nodata response"

    .line 1241
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1242
    invoke-direct {p0, p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNodataResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p3

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Validating a positive response"

    .line 1236
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 1237
    invoke-direct {p0, p1, p2, v6, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p3

    .line 1287
    :goto_0
    new-instance v0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda7;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)V

    invoke-static {p3, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeSpuriousAuthority(Lorg/xbill/DNS/dnssec/SMessage;)V
    .locals 7

    const/4 v0, 0x1

    .line 251
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {p1, v2}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 258
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 259
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/dnssec/SRRset;

    .line 260
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v3

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->sigs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 263
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v6

    aput-object v6, v4, v5

    .line 264
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v5

    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 265
    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v1

    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "Removing spurious unsigned NS record (likely inserted by forwarder) {}/{}/{}"

    .line 261
    invoke-interface {v3, v1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private sendRequest(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            ">;"
        }
    .end annotation

    .line 874
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 877
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    aput-object v4, v2, v3

    .line 878
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 879
    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v0

    invoke-static {v0}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const-string v0, "Sending request: <{}/{}/{}>"

    .line 875
    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->clone()Lorg/xbill/DNS/Message;

    move-result-object p1

    .line 883
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->setFlag(I)V

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 885
    invoke-interface {v0, p1, p2}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p2

    new-instance v0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda20;-><init>(Lorg/xbill/DNS/Message;)V

    .line 886
    invoke-static {p2, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validateAnswerAndGetWildcards(Lorg/xbill/DNS/dnssec/SMessage;ILjava/util/Map;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "I",
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateAnswerAndGetWildcardsRecursive(Lorg/xbill/DNS/dnssec/SMessage;ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validateAnswerAndGetWildcardsRecursive(Lorg/xbill/DNS/dnssec/SMessage;ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "I",
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    move-object v4, p1

    .line 465
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v8

    .line 468
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 469
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 472
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/xbill/DNS/dnssec/SRRset;

    move-object v0, p0

    move-object/from16 v9, p5

    .line 474
    invoke-direct {p0, v3, v9}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->prepareFindKey(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v10

    new-instance v11, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda19;

    move-object v1, v11

    move-object v2, p0

    move-object v4, p1

    move-object v5, p3

    move v6, p2

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v9}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda19;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    .line 475
    invoke-static {v10, v11}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    return-object v1
.end method

.method private validateNameErrorResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 727
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    const/4 v1, 0x1

    .line 733
    invoke-virtual {p2, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    move-object v6, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 734
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v4

    sget-object v5, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v4, v5, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v3

    const-string p3, "failed.nxdomain.cname_nxdomain"

    .line 735
    invoke-static {p3, p1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 736
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 739
    :cond_1
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 740
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    goto :goto_0

    .line 746
    :cond_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p2, v0, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNameErrorResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda12;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p3

    move-object v8, p1

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda12;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)V

    .line 747
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda13;-><init>()V

    .line 844
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$3(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validateNameErrorResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 849
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    .line 850
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 853
    :cond_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/xbill/DNS/dnssec/SRRset;

    .line 854
    invoke-direct {p0, v3, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->prepareFindKey(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v7, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda22;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda22;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)V

    .line 855
    invoke-static {v0, v7}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validateNodataResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 565
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    .line 566
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    const/4 p1, 0x1

    .line 573
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v4, v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/dnssec/SRRset;

    .line 574
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getSecurityStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v3

    sget-object v6, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v3, v6, :cond_1

    new-array p1, p1, [Ljava/lang/Object;

    .line 575
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p3

    aput-object p3, p1, v2

    const-string p3, "failed.answer.cname_nodata"

    invoke-static {p3, p1}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 576
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 579
    :cond_1
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 580
    invoke-virtual {v0}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v0}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    goto :goto_0

    .line 586
    :cond_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p2, p1, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNodataResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    new-instance p4, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/dnssec/Nsec3ValidationState;)V

    .line 588
    invoke-static {p1, p4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validateNodataResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 682
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 p1, 0x0

    .line 683
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 686
    :cond_0
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/xbill/DNS/dnssec/SRRset;

    .line 687
    invoke-direct {p0, v3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->prepareFindKey(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v8, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda10;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)V

    .line 688
    invoke-static {v0, v8}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$2(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private validatePositiveResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Lorg/xbill/DNS/dnssec/Nsec3ValidationState;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v8, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 294
    new-instance v9, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v7, p4

    .line 297
    invoke-direct {p0, v12, v0, v8, v7}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateAnswerAndGetWildcards(Lorg/xbill/DNS/dnssec/SMessage;ILjava/util/Map;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v13

    new-instance v14, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda16;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda16;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;)V

    .line 299
    invoke-static {v13, v14}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v7

    new-instance v13, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;

    move-object v0, v13

    move-object v2, v8

    move-object v3, v10

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda17;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)V

    .line 324
    invoke-static {v7, v13}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method private validatePositiveResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/dnssec/SMessage;",
            "Ljava/util/Map<",
            "Lorg/xbill/DNS/Name;",
            "Lorg/xbill/DNS/Name;",
            ">;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/dnssec/SRRset;",
            ">;[I",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p5

    .line 407
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    array-length v1, v7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 408
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    aget v0, v7, v0

    move-object v3, p1

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 415
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v0, 0x0

    move-object/from16 v9, p7

    .line 416
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 417
    invoke-direct/range {p0 .. p8}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v9, p7

    .line 421
    invoke-virtual/range {p7 .. p7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/xbill/DNS/dnssec/SRRset;

    move-object v11, p0

    move-object/from16 v10, p8

    .line 422
    invoke-direct {p0, v2, v10}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->prepareFindKey(Lorg/xbill/DNS/dnssec/SRRset;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v12

    new-instance v13, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;

    move-object v0, v13

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda11;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)V

    .line 423
    invoke-static {v12, v13}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getTimeout()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 1393
    invoke-interface {v0}, Lorg/xbill/DNS/Resolver;->getTimeout()Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getTrustAnchors()Lorg/xbill/DNS/dnssec/TrustAnchorStore;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

    return-object v0
.end method

.method public init(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 161
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/dnssec/KeyCache;->init(Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 162
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->init(Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    .line 163
    invoke-virtual {v0, p1}, Lorg/xbill/DNS/dnssec/ValUtils;->init(Ljava/util/Properties;)V

    const-string v0, "dnsjava.dnssec.trust_anchor_file"

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v1, "Reading trust anchor file: {}"

    .line 168
    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->loadTrustAnchors(Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method public isAddReasonToAdditional()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->isAddReasonToAdditional:Z

    return v0
.end method

.method synthetic lambda$processFindKey$12$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/SMessage;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 984
    invoke-direct {p0, p1, p4, p2, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processDSResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$processFindKey$13$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/SMessage;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 993
    invoke-direct {p0, p1, p4, p2, p3}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processDNSKEYResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$processValidate$14$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;Ljava/lang/Void;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    .line 1251
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p5

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p5, v0, :cond_0

    .line 1252
    sget-object p5, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v0, -0x1

    invoke-virtual {p1, p5, v0}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    .line 1253
    invoke-direct {p0, p2, p1, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNodataResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1256
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$processValidate$15$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;Ljava/lang/Void;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    .line 1271
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getStatus()Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object p5

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p5, v0, :cond_0

    .line 1272
    sget-object p5, Lorg/xbill/DNS/dnssec/SecurityStatus;->UNCHECKED:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v0, -0x1

    invoke-virtual {p1, p5, v0}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    .line 1273
    invoke-direct {p0, p2, p1, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNameErrorResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1277
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$processValidate$16$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Ljava/lang/Void;)Lorg/xbill/DNS/dnssec/SMessage;
    .locals 0

    .line 1287
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processFinishedState(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/dnssec/SMessage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$sendAsync$17$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/Message;
    .locals 2

    .line 1433
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getMessage()Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 1434
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SMessage;->getBogusReason()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1436
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->applyEdeToOpt(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;)V

    iget-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->isAddReasonToAdditional:Z

    if-eqz p1, :cond_0

    .line 1438
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->addValidationReasonTxtRecord(Lorg/xbill/DNS/Message;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method synthetic lambda$sendAsync$18$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/SMessage;)Ljava/util/concurrent/CompletionStage;
    .locals 4

    .line 1413
    invoke-virtual {p3}, Lorg/xbill/DNS/dnssec/SMessage;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    .line 1416
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Header;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1417
    invoke-virtual {p3}, Lorg/xbill/DNS/dnssec/SMessage;->getMessage()Lorg/xbill/DNS/Message;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 1422
    :cond_0
    invoke-virtual {p3}, Lorg/xbill/DNS/dnssec/SMessage;->getMessage()Lorg/xbill/DNS/Message;

    move-result-object v0

    .line 1423
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_1

    .line 1424
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1425
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1426
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/xbill/DNS/Header;->unsetFlag(I)V

    .line 1427
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 1430
    :cond_1
    invoke-direct {p0, p1, p3, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->processValidate(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda18;

    invoke-direct {p2, p0}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda18;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;)V

    .line 1431
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$validateAnswerAndGetWildcardsRecursive$3$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .line 477
    invoke-virtual {p8, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->validateKeyFor(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v0

    const/4 v1, 0x0

    .line 480
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->applyToResponse(Lorg/xbill/DNS/dnssec/SMessage;)V

    .line 480
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 483
    invoke-static {v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v0, p1, p8, v3}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p8

    .line 485
    iget-object p8, p8, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const/4 v3, 0x1

    if-eq p8, v0, :cond_1

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "failed.answer.positive"

    .line 486
    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 487
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 495
    :cond_1
    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/dnssec/ValUtils;->rrsetWildcard(Lorg/xbill/DNS/RRset;)Lorg/xbill/DNS/Name;

    move-result-object p8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v0, 0x27

    if-eqz p8, :cond_3

    .line 503
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v4

    if-ne v4, v0, :cond_2

    new-array p3, v3, [Ljava/lang/Object;

    .line 504
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "failed.dname.wildcard"

    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 505
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 508
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-interface {p3, v4, p8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eq p4, v0, :cond_6

    .line 512
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p8

    if-ne p8, v0, :cond_6

    .line 513
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/DNAMERecord;

    .line 514
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p8

    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result v0

    if-ge p8, v0, :cond_6

    .line 515
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p8

    invoke-interface {p6, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lorg/xbill/DNS/dnssec/SRRset;

    .line 518
    invoke-virtual {p6}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result p8

    const/4 v0, 0x5

    if-ne p8, v0, :cond_6

    if-eqz p1, :cond_6

    .line 519
    invoke-virtual {p6}, Lorg/xbill/DNS/dnssec/SRRset;->size()I

    move-result p8

    if-le p8, v3, :cond_4

    const-string p1, "failed.synthesize.multiple"

    new-array p3, v1, [Ljava/lang/Object;

    .line 520
    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 521
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 524
    :cond_4
    invoke-virtual {p6}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object p8

    check-cast p8, Lorg/xbill/DNS/CNAMERecord;

    .line 528
    :try_start_1
    invoke-virtual {p8}, Lorg/xbill/DNS/CNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xbill/DNS/Name;->relativize(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/DNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 527
    invoke-static {v0, p1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    .line 529
    invoke-virtual {p8}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p3, "failed.synthesize.nomatch"

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    .line 531
    invoke-virtual {p8}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object p5

    aput-object p5, p4, v1

    aput-object p1, p4, v3

    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 530
    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 532
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_1
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 539
    :cond_5
    sget-object p1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {p6, p1}, Lorg/xbill/DNS/dnssec/SRRset;->setSecurityStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;)V

    goto :goto_0

    :catch_0
    const-string p1, "failed.synthesize.toolong"

    new-array p3, v1, [Ljava/lang/Object;

    .line 535
    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 536
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 544
    :cond_6
    :goto_0
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-object v0, p0

    move-object v1, p2

    move v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p7

    .line 545
    invoke-direct/range {v0 .. v5}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateAnswerAndGetWildcardsRecursive(Lorg/xbill/DNS/dnssec/SMessage;ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p3

    .line 497
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3, p4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 498
    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$validateNameErrorResponse$7$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;Ljava/lang/Void;)Ljava/util/concurrent/CompletionStage;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 754
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x2

    .line 758
    invoke-virtual {v1, v6}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v11, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/xbill/DNS/dnssec/SRRset;

    .line 761
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v14

    const/16 v15, 0x2f

    if-ne v14, v15, :cond_4

    .line 762
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v14

    check-cast v14, Lorg/xbill/DNS/NSECRecord;

    .line 763
    invoke-static {v12, v14, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v8, 0x1

    .line 767
    :cond_1
    invoke-virtual {v14}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v13

    .line 769
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v15

    invoke-static {v2, v15, v13}, Lorg/xbill/DNS/dnssec/ValUtils;->closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v13

    invoke-virtual {v13}, Lorg/xbill/DNS/Name;->labels()I

    move-result v13

    if-gt v13, v10, :cond_2

    if-ne v13, v10, :cond_3

    if-nez v9, :cond_3

    .line 773
    :cond_2
    invoke-static {v12, v14, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNoWC(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result v9

    :cond_3
    move v10, v13

    .line 779
    :cond_4
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v13

    const/16 v14, 0x32

    if-ne v13, v14, :cond_0

    .line 780
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v11

    goto :goto_0

    :cond_5
    iget-object v6, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 785
    invoke-virtual {v6, v4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->stripUnknownAlgNSEC3s(Ljava/util/List;)V

    const/4 v6, -0x1

    if-eqz v8, :cond_6

    if-nez v9, :cond_a

    .line 786
    :cond_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_a

    sget-object v8, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v9, "Validating nxdomain: using NSEC3 records"

    .line 787
    invoke-interface {v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v8, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    iget-object v9, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 790
    invoke-virtual {v8, v4, v9}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->allNSEC3sIgnorable(Ljava/util/List;Lorg/xbill/DNS/dnssec/KeyCache;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 791
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v3, "failed.nsec3_ignored"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v3}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    .line 792
    invoke-static {v7}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    :cond_7
    iget-object v8, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 796
    invoke-virtual {v8, v4, v2, v11, v3}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveNameError(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v2

    .line 797
    sget-object v4, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v2, v4, :cond_9

    .line 798
    sget-object v3, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v2, v3, :cond_8

    const-string v3, "failed.nxdomain.nsec3_insecure"

    new-array v4, v5, [Ljava/lang/Object;

    .line 799
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v6, v3}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v3, "failed.nxdomain.nsec3_bogus"

    new-array v4, v5, [Ljava/lang/Object;

    .line 804
    invoke-static {v3, v4}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    .line 801
    invoke-virtual {v1, v2, v4, v3}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    .line 807
    :goto_1
    invoke-static {v7}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    :cond_9
    const/4 v8, 0x1

    const/4 v9, 0x1

    :cond_a
    if-eqz v8, :cond_c

    if-nez v9, :cond_b

    goto :goto_2

    :cond_b
    sget-object v2, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v3, "Successfully validated NAME ERROR response"

    .line 840
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 841
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1, v2, v6}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    .line 842
    invoke-static {v7}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1

    :cond_c
    :goto_2
    move-object/from16 v2, p4

    move-object/from16 v4, p5

    .line 820
    invoke-direct {v0, v2, v1, v3, v4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNodataResponse(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v2

    new-instance v3, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;

    invoke-direct {v3, v1, v8}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;-><init>(Lorg/xbill/DNS/dnssec/SMessage;Z)V

    .line 821
    invoke-static {v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/lang/Runnable;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$validateNameErrorResponseRecursive$9$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;
    .locals 2

    .line 857
    invoke-virtual {p5, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->validateKeyFor(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->applyToResponse(Lorg/xbill/DNS/dnssec/SMessage;)V

    .line 860
    new-instance p1, Ljava/lang/Exception;

    iget-object p2, v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 863
    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, p1, p5, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p5

    .line 864
    iget-object p5, p5, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p5, v0, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "failed.nxdomain.authority"

    .line 865
    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 866
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 869
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNameErrorResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$validateNodataResponse$4$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/lang/Void;Ljava/lang/Throwable;)Ljava/lang/Void;
    .locals 16

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    const/4 v9, 0x0

    if-eqz p6, :cond_0

    return-object v9

    .line 601
    :cond_0
    new-instance v2, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;

    invoke-direct {v2}, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;-><init>()V

    .line 604
    new-instance v3, Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x2

    .line 610
    invoke-virtual {v1, v4}, Lorg/xbill/DNS/dnssec/SMessage;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/16 v5, 0xc

    move-object v6, v9

    move-object v7, v6

    const/4 v11, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/xbill/DNS/dnssec/SRRset;

    .line 613
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v15

    const/16 v13, 0x2f

    if-ne v15, v13, :cond_4

    .line 614
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/NSECRecord;

    move/from16 v13, p3

    .line 615
    invoke-static {v12, v2, v8, v13}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNodata(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;I)Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;

    move-result-object v15

    .line 616
    iget-boolean v14, v15, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->result:Z

    if-eqz v14, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x6

    .line 622
    :goto_1
    invoke-static {v12, v2, v8}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 623
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v7

    invoke-virtual {v2}, Lorg/xbill/DNS/NSECRecord;->getNext()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-static {v8, v7, v2}, Lorg/xbill/DNS/dnssec/ValUtils;->closestEncloser(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v7

    :cond_3
    move-object v2, v15

    goto :goto_2

    :cond_4
    move/from16 v13, p3

    .line 628
    :goto_2
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v14

    const/16 v15, 0x32

    if-ne v14, v15, :cond_1

    .line 629
    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v12}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v6

    goto :goto_0

    :cond_5
    move/from16 v13, p3

    .line 639
    iget-object v4, v2, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    if-eqz v4, :cond_7

    if-eqz v7, :cond_6

    iget-object v2, v2, Lorg/xbill/DNS/dnssec/ValUtils$NsecProvesNodataResponse;->wc:Lorg/xbill/DNS/Name;

    invoke-virtual {v7, v2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v8, v7}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/4 v5, 0x6

    const/4 v11, 0x0

    :cond_7
    iget-object v2, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 644
    invoke-virtual {v2, v3}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->stripUnknownAlgNSEC3s(Ljava/util/List;)V

    const/4 v12, -0x1

    if-nez v11, :cond_b

    .line 645
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v4, "Using NSEC3 records"

    .line 646
    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    iget-object v4, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 649
    invoke-virtual {v2, v3, v4}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->allNSEC3sIgnorable(Ljava/util/List;Lorg/xbill/DNS/dnssec/KeyCache;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "failed.nsec3_ignored"

    new-array v3, v10, [Ljava/lang/Object;

    .line 650
    invoke-static {v2, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    return-object v9

    :cond_8
    iget-object v2, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v7, p4

    .line 655
    invoke-virtual/range {v2 .. v7}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveNodata(Ljava/util/List;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v2

    .line 656
    iget v5, v2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->edeReason:I

    .line 657
    iget-object v3, v2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v4, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v3, v4, :cond_9

    .line 658
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1, v2, v12}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    return-object v9

    .line 662
    :cond_9
    iget-object v2, v2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v3, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v2, v3, :cond_a

    const/4 v13, 0x1

    goto :goto_3

    :cond_a
    const/4 v13, 0x0

    :goto_3
    move v11, v13

    :cond_b
    if-nez v11, :cond_c

    const-string v2, "failed.nodata"

    new-array v3, v10, [Ljava/lang/Object;

    .line 666
    invoke-static {v2, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;I)V

    sget-object v1, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v2, "Failed NODATA for {}"

    .line 667
    invoke-interface {v1, v2, v8}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v9

    :cond_c
    sget-object v2, Lorg/xbill/DNS/dnssec/ValidatingResolver;->log:Lorg/slf4j/Logger;

    const-string v3, "Successfully validated NODATA response"

    .line 671
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    .line 672
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1, v2, v12}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    return-object v9
.end method

.method synthetic lambda$validateNodataResponseRecursive$5$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;
    .locals 2

    .line 690
    invoke-virtual {p6, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->validateKeyFor(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->applyToResponse(Lorg/xbill/DNS/dnssec/SMessage;)V

    .line 693
    new-instance p1, Ljava/lang/Exception;

    iget-object p2, v0, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->reason:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 696
    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, p1, p6, v1}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object p6

    .line 697
    iget-object p6, p6, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v0, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq p6, v0, :cond_1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    const-string p1, "failed.authority.nodata"

    .line 698
    invoke-static {p1, p3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 699
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 702
    :cond_1
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validateNodataResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$validatePositiveResponse$0$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Ljava/lang/Boolean;)Ljava/util/concurrent/CompletionStage;
    .locals 11

    .line 301
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 305
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    const/16 v2, 0xff

    const/4 v3, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    goto :goto_0

    :cond_0
    filled-new-array {v3}, [I

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 311
    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v8, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0

    .line 322
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$validatePositiveResponse$1$org-xbill-DNS-dnssec-ValidatingResolver(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/lang/Boolean;)V
    .locals 13

    .line 0
    move-object v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 326
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v9, -0x1

    if-nez v1, :cond_7

    .line 335
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 337
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v11, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/dnssec/SRRset;

    .line 338
    invoke-virtual {v3}, Lorg/xbill/DNS/dnssec/SRRset;->first()Lorg/xbill/DNS/Record;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/NSECRecord;

    .line 339
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Name;

    invoke-static {v3, v4, v5}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecProvesNameError(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;Lorg/xbill/DNS/Name;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 341
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xbill/DNS/Name;

    invoke-static {v5, v3, v4}, Lorg/xbill/DNS/dnssec/ValUtils;->nsecWildcard(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/NSECRecord;)Lorg/xbill/DNS/Name;

    move-result-object v3

    .line 342
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/Name;

    invoke-virtual {v4, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    const/4 v12, 0x1

    goto :goto_1

    .line 353
    :catch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "failed.positive.wildcardgeneration"

    new-array v3, v11, [Ljava/lang/Object;

    .line 354
    invoke-static {v2, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_6

    .line 362
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    iget-object v3, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->keyCache:Lorg/xbill/DNS/dnssec/KeyCache;

    .line 363
    invoke-virtual {v2, v7, v3}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->allNSEC3sIgnorable(Ljava/util/List;Lorg/xbill/DNS/dnssec/KeyCache;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 364
    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    const-string v2, "failed.nsec3_ignored"

    new-array v3, v11, [Ljava/lang/Object;

    .line 365
    invoke-static {v2, v3}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 364
    invoke-virtual {v8, v1, v9, v2}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, v0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->n3valUtils:Lorg/xbill/DNS/dnssec/NSEC3ValUtils;

    .line 372
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Name;

    .line 373
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-virtual {v4}, Lorg/xbill/DNS/dnssec/SRRset;->getSignerName()Lorg/xbill/DNS/Name;

    move-result-object v4

    .line 374
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/xbill/DNS/Name;

    move-object v1, v2

    move-object/from16 v2, p3

    move-object/from16 v6, p5

    .line 370
    invoke-virtual/range {v1 .. v6}, Lorg/xbill/DNS/dnssec/NSEC3ValUtils;->proveWildcard(Ljava/util/List;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;)Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v1

    .line 376
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v1, v2, :cond_5

    .line 377
    invoke-virtual {v8, v1, v9}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    return-void

    .line 379
    :cond_5
    sget-object v2, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-ne v1, v2, :cond_6

    goto/16 :goto_0

    :cond_6
    if-nez v12, :cond_1

    const-string v1, "failed.positive.wildcard_too_broad"

    new-array v2, v11, [Ljava/lang/Object;

    .line 387
    invoke-static {v1, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    return-void

    .line 393
    :cond_7
    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v8, v1, v9}, Lorg/xbill/DNS/dnssec/SMessage;->setStatus(Lorg/xbill/DNS/dnssec/SecurityStatus;I)V

    return-void
.end method

.method synthetic lambda$validatePositiveResponseRecursive$2$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/KeyEntry;)Ljava/util/concurrent/CompletionStage;
    .locals 10

    .line 0
    move-object v9, p0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p10

    .line 425
    invoke-virtual {v2, p1}, Lorg/xbill/DNS/dnssec/KeyEntry;->validateKeyFor(Lorg/xbill/DNS/dnssec/SRRset;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v3

    const/4 v4, 0x0

    .line 428
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 427
    invoke-virtual {v3, p2}, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->applyToResponse(Lorg/xbill/DNS/dnssec/SMessage;)V

    .line 428
    invoke-static {v5}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, v9, Lorg/xbill/DNS/dnssec/ValidatingResolver;->valUtils:Lorg/xbill/DNS/dnssec/ValUtils;

    iget-object v6, v9, Lorg/xbill/DNS/dnssec/ValidatingResolver;->clock:Ljava/time/Clock;

    .line 431
    invoke-static {v6}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Clock;)Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v3, p1, v2, v6}, Lorg/xbill/DNS/dnssec/ValUtils;->verifySRRset(Lorg/xbill/DNS/dnssec/SRRset;Lorg/xbill/DNS/dnssec/KeyEntry;Ljava/time/Instant;)Lorg/xbill/DNS/dnssec/JustifiedSecStatus;

    move-result-object v2

    .line 434
    iget-object v2, v2, Lorg/xbill/DNS/dnssec/JustifiedSecStatus;->status:Lorg/xbill/DNS/dnssec/SecurityStatus;

    sget-object v3, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const-string v0, "failed.authority.positive"

    .line 435
    invoke-static {v0, v2}, Lorg/xbill/DNS/dnssec/R;->get(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/xbill/DNS/dnssec/SMessage;->setBogus(Ljava/lang/String;)V

    .line 436
    invoke-static {v5}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 440
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    move-object v4, p4

    .line 441
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v4, p4

    .line 442
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v2

    const/16 v3, 0x32

    if-ne v2, v3, :cond_4

    move-object v3, p5

    .line 443
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v4, p4

    :cond_4
    :goto_0
    move-object v3, p5

    :goto_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 447
    invoke-direct/range {v0 .. v8}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->validatePositiveResponseRecursive(Lorg/xbill/DNS/dnssec/SMessage;Ljava/util/Map;Ljava/util/List;Ljava/util/List;[ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    return-object v0
.end method

.method public loadTrustAnchors(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    new-instance v1, Lorg/xbill/DNS/Master;

    sget-object v2, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    const-wide/16 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lorg/xbill/DNS/Master;-><init>(Ljava/io/InputStream;Lorg/xbill/DNS/Name;J)V

    .line 185
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lorg/xbill/DNS/Master;->nextRecord()Lorg/xbill/DNS/Record;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 186
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1}, Lorg/xbill/DNS/Master;->close()V

    .line 193
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 195
    new-instance p1, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/SRRset;-><init>()V

    .line 196
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    .line 198
    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 203
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 204
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SRRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    .line 209
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getType()I

    move-result v2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 211
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->getDClass()I

    move-result v2

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 212
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SRRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

    .line 218
    invoke-interface {v2, p1}, Lorg/xbill/DNS/dnssec/TrustAnchorStore;->store(Lorg/xbill/DNS/RRset;)V

    .line 219
    new-instance p1, Lorg/xbill/DNS/dnssec/SRRset;

    invoke-direct {p1}, Lorg/xbill/DNS/dnssec/SRRset;-><init>()V

    .line 220
    invoke-virtual {p1, v1}, Lorg/xbill/DNS/dnssec/SRRset;->addRR(Lorg/xbill/DNS/Record;)V

    goto :goto_1

    .line 224
    :cond_4
    invoke-virtual {p1}, Lorg/xbill/DNS/dnssec/SRRset;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->trustAnchors:Lorg/xbill/DNS/dnssec/TrustAnchorStore;

    .line 225
    invoke-interface {v0, p1}, Lorg/xbill/DNS/dnssec/TrustAnchorStore;->store(Lorg/xbill/DNS/RRset;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 183
    :try_start_1
    invoke-virtual {v1}, Lorg/xbill/DNS/Master;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public synthetic send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$send(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sendAsync(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/ResolverListener;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$sendAsync(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 1410
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->sendRequest(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, p2}, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda15;-><init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)V

    .line 1411
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public setAddReasonToAdditional(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->isAddReasonToAdditional:Z

    return-void
.end method

.method public synthetic setEDNS(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public setEDNS(IIILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/EDNSOption;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    const v1, 0x8000

    or-int/2addr p3, v1

    .line 1377
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    return-void

    .line 1374
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "EDNS cannot be disabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs synthetic setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;III[Lorg/xbill/DNS/EDNSOption;)V

    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 0

    return-void
.end method

.method public setPort(I)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 1334
    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    return-void
.end method

.method public setTCP(Z)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 1345
    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 1388
    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    return-void
.end method

.method public synthetic setTimeout(I)V
    .locals 0

    invoke-static {p0, p1}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;I)V

    return-void
.end method

.method public synthetic setTimeout(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->$default$setTimeout(Lorg/xbill/DNS/Resolver;II)V

    return-void
.end method

.method public setTimeout(Ljava/time/Duration;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver;->headResolver:Lorg/xbill/DNS/Resolver;

    .line 1398
    invoke-interface {v0, p1}, Lorg/xbill/DNS/Resolver;->setTimeout(Ljava/time/Duration;)V

    return-void
.end method
