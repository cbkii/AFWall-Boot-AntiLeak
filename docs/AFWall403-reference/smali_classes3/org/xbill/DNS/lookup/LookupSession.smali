.class public Lorg/xbill/DNS/lookup/LookupSession;
.super Ljava/lang/Object;
.source "LookupSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_ITERATIONS:I = 0x10

.field public static final DEFAULT_NDOTS:I = 0x1

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final caches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/xbill/DNS/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final cycleResults:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

.field private irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

.field private final maxRedirects:I

.field private final ndots:I

.field private final resolver:Lorg/xbill/DNS/Resolver;

.field private final searchPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RgACP7cYzV45tPDSRJkEyma50P4(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 0

    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->maybeAddToCache(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/lookup/LookupSession;

    .line 56
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/lookup/LookupSession;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>(Lorg/xbill/DNS/Resolver;IILjava/util/List;ZLjava/util/List;Lorg/xbill/DNS/hosts/HostsFileParser;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/lookup/IrrelevantRecordMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Resolver;",
            "II",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;Z",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Cache;",
            ">;",
            "Lorg/xbill/DNS/hosts/HostsFileParser;",
            "Ljava/util/concurrent/Executor;",
            "Lorg/xbill/DNS/lookup/IrrelevantRecordMode;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession;->resolver:Lorg/xbill/DNS/Resolver;

    iput p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    iput p3, p0, Lorg/xbill/DNS/lookup/LookupSession;->ndots:I

    iput-object p4, p0, Lorg/xbill/DNS/lookup/LookupSession;->searchPath:Ljava/util/List;

    iput-boolean p5, p0, Lorg/xbill/DNS/lookup/LookupSession;->cycleResults:Z

    if-nez p6, :cond_0

    .line 89
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {p6}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda3;-><init>()V

    new-instance p3, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda4;

    invoke-direct {p3}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p2, p3}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    :goto_0
    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession;->caches:Ljava/util/Map;

    iput-object p7, p0, Lorg/xbill/DNS/lookup/LookupSession;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    if-nez p8, :cond_1

    .line 92
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p8

    :cond_1
    iput-object p8, p0, Lorg/xbill/DNS/lookup/LookupSession;->executor:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lorg/xbill/DNS/lookup/LookupSession;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-void

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "resolver is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/Resolver;IILjava/util/List;ZLjava/util/List;Lorg/xbill/DNS/hosts/HostsFileParser;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/lookup/IrrelevantRecordMode;Lorg/xbill/DNS/lookup/LookupSession$1;)V
    .locals 0

    .line 57
    invoke-direct/range {p0 .. p9}, Lorg/xbill/DNS/lookup/LookupSession;-><init>(Lorg/xbill/DNS/Resolver;IILjava/util/List;ZLjava/util/List;Lorg/xbill/DNS/hosts/HostsFileParser;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/lookup/IrrelevantRecordMode;)V

    return-void
.end method

.method private static buildResult(Lorg/xbill/DNS/Message;Ljava/util/List;Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/lookup/LookupResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;",
            "Lorg/xbill/DNS/Record;",
            ")",
            "Lorg/xbill/DNS/lookup/LookupResult;"
        }
    .end annotation

    .line 694
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getRcode()I

    move-result v0

    const/4 v1, 0x1

    .line 695
    invoke-virtual {p0, v1}, Lorg/xbill/DNS/Message;->getSection(I)Ljava/util/List;

    move-result-object v2

    .line 696
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    const/4 p1, 0x2

    const/4 v2, 0x0

    if-eq v0, p1, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    const/16 p0, 0x8

    if-eq v0, p0, :cond_0

    .line 714
    new-instance p0, Lorg/xbill/DNS/lookup/LookupFailedException;

    new-array p1, v1, [Ljava/lang/Object;

    .line 715
    invoke-static {v0}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Unknown non-success error code %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 701
    :cond_0
    new-instance p0, Lorg/xbill/DNS/lookup/NoSuchRRSetException;

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/NoSuchRRSetException;-><init>(Lorg/xbill/DNS/Name;I)V

    throw p0

    .line 699
    :cond_1
    new-instance p0, Lorg/xbill/DNS/lookup/NoSuchDomainException;

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/NoSuchDomainException;-><init>(Lorg/xbill/DNS/Name;I)V

    throw p0

    .line 703
    :cond_2
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 705
    invoke-virtual {p0}, Lorg/xbill/DNS/Message;->getOPT()Lorg/xbill/DNS/OPTRecord;

    move-result-object p0

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/OPTRecord;->getOptions(I)Ljava/util/List;

    move-result-object p0

    .line 706
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 707
    new-instance p1, Lorg/xbill/DNS/lookup/ServerFailedException;

    .line 708
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/ExtendedErrorCodeOption;

    invoke-direct {p1, v0, p2, p0}, Lorg/xbill/DNS/lookup/ServerFailedException;-><init>(Lorg/xbill/DNS/Name;ILorg/xbill/DNS/ExtendedErrorCodeOption;)V

    throw p1

    .line 712
    :cond_3
    new-instance p0, Lorg/xbill/DNS/lookup/ServerFailedException;

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/ServerFailedException;-><init>(Lorg/xbill/DNS/Name;I)V

    throw p0

    .line 718
    :cond_4
    new-instance p0, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-direct {p0, v2, p1}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public static builder()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 2

    .line 353
    new-instance v0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;-><init>(Lorg/xbill/DNS/lookup/LookupSession$1;)V

    const/16 v1, 0x10

    .line 354
    invoke-static {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->access$202(Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;I)I

    const/4 v1, 0x1

    .line 355
    invoke-static {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->access$302(Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;I)I

    return-object v0
.end method

.method private completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            "R:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/CompletionStage<",
            "TR;>;"
        }
    .end annotation

    .line 604
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 605
    invoke-static {v0, p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object v0
.end method

.method public static defaultBuilder()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 4

    .line 371
    invoke-static {}, Lorg/xbill/DNS/lookup/LookupSession;->builder()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver;

    .line 374
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/ResolverConfig;->servers()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda5;-><init>()V

    .line 375
    invoke-static {v2, v3}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 376
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-direct {v1, v2}, Lorg/xbill/DNS/ExtendedResolver;-><init>(Ljava/lang/Iterable;)V

    .line 372
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->resolver(Lorg/xbill/DNS/Resolver;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object v0

    .line 377
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->ndots(I)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/Cache;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/xbill/DNS/Cache;-><init>(I)V

    .line 378
    invoke-virtual {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->cache(Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->defaultHostsFileParser()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$expandName$1(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 0

    .line 439
    invoke-static {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->safeConcat(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$lookupWithCache$4(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/SetResponse;
    .locals 5

    sget-object v0, Lorg/xbill/DNS/lookup/LookupSession;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 514
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    aput-object v4, v2, v3

    .line 515
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 516
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "Looking for <{}/{}/{}> in cache"

    .line 512
    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xbill/DNS/Record;->getType()I

    move-result p0

    .line 517
    invoke-virtual {p1, v0, p0, v1}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$lookupWithResolver$8(Ljava/util/List;Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/lookup/LookupResult;
    .locals 0

    .line 559
    invoke-static {p2, p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->buildResult(Lorg/xbill/DNS/Message;Ljava/util/List;Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/lookup/LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$maybeAddToCache$9(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Cache;)V
    .locals 0

    .line 569
    invoke-virtual {p1, p0}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    return-void
.end method

.method static synthetic lambda$new$0(Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/Cache;
    .locals 0

    return-object p0
.end method

.method private lookupUntilSuccess(Ljava/util/Iterator;II)Ljava/util/concurrent/CompletionStage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lorg/xbill/DNS/Name;",
            ">;II)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 487
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Name;

    invoke-static {v0, p2, p3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/lookup/LookupSession;->lookupWithCache(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0, v0}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda18;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;)V

    .line 489
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda19;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Ljava/util/Iterator;II)V

    .line 490
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 505
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private lookupWithCache(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Record;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->caches:Ljava/util/Map;

    .line 509
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda11;-><init>(Lorg/xbill/DNS/Record;)V

    .line 510
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda12;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;Ljava/util/List;)V

    .line 520
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda13;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;Ljava/util/List;)V

    .line 521
    invoke-static {v0, v1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private lookupWithHosts(Ljava/util/List;I)Lorg/xbill/DNS/lookup/LookupResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;I)",
            "Lorg/xbill/DNS/lookup/LookupResult;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/16 v1, 0x1c

    if-ne p2, v1, :cond_3

    .line 463
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/lookup/LookupSession;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    .line 464
    invoke-virtual {v2, v1, p2}, Lorg/xbill/DNS/hosts/HostsFileParser;->getAddressForHost(Lorg/xbill/DNS/Name;I)Ljava/util/Optional;

    move-result-object v2

    .line 465
    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ne p2, v0, :cond_2

    .line 468
    new-instance p1, Lorg/xbill/DNS/ARecord;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/net/InetAddress;

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    goto :goto_0

    .line 470
    :cond_2
    new-instance p1, Lorg/xbill/DNS/AAAARecord;

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    invoke-static {v2}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/net/InetAddress;

    move-object v2, p1

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    .line 473
    :goto_0
    new-instance v2, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-static {v1, p2, v0}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p2

    invoke-direct {v2, p2, v0, p1}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Lorg/xbill/DNS/Record;ZLorg/xbill/DNS/Record;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    sget-object p2, Lorg/xbill/DNS/lookup/LookupSession;->log:Lorg/slf4j/Logger;

    const-string v0, "Local hosts database parsing failed, ignoring and using resolver"

    .line 477
    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private lookupWithResolver(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Record;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 525
    invoke-static {p1}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/lookup/LookupSession;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/xbill/DNS/lookup/LookupSession;->resolver:Lorg/xbill/DNS/Resolver;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 529
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    aput-object v4, v2, v3

    .line 530
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 531
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string v3, "Asking {} for <{}/{}/{}>"

    .line 526
    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession;->resolver:Lorg/xbill/DNS/Resolver;

    iget-object v2, p0, Lorg/xbill/DNS/lookup/LookupSession;->executor:Ljava/util/concurrent/Executor;

    .line 533
    invoke-interface {v1, v0, v2}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0, p1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda8;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Record;)V

    .line 534
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda9;-><init>(Lorg/xbill/DNS/lookup/LookupSession;)V

    .line 558
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;

    invoke-direct {v1, p2, p1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;Lorg/xbill/DNS/Record;)V

    .line 559
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private maybeAddToCache(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;
    .locals 5

    const/4 v0, 0x1

    .line 563
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/Message;->getSectionRRsets(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/RRset;

    .line 564
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->getType()I

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_0

    :cond_1
    invoke-virtual {v2}, Lorg/xbill/DNS/RRset;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    goto :goto_0

    .line 565
    :cond_2
    new-instance p1, Lorg/xbill/DNS/lookup/InvalidZoneDataException;

    const-string v0, "Multiple CNAME RRs not allowed, see RFC 1034 3.6.2"

    invoke-direct {p1, v0}, Lorg/xbill/DNS/lookup/InvalidZoneDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->caches:Ljava/util/Map;

    .line 568
    invoke-virtual {p1}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Cache;

    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda17;-><init>(Lorg/xbill/DNS/Message;)V

    .line 569
    invoke-static {v0, v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;Ljava/util/function/Consumer;)V

    return-object p1
.end method

.method private maybeFollowRedirect(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;I)Ljava/util/concurrent/CompletionStage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            "Lorg/xbill/DNS/Record;",
            "I)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    if-gt p3, v0, :cond_2

    .line 619
    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object v0

    .line 620
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 622
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Record;

    invoke-virtual {v1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Record;

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getType()I

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_1

    .line 623
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/lookup/LookupSession;->maybeFollowRedirectsInAnswer(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;I)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 625
    :cond_1
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 616
    :cond_2
    new-instance p1, Lorg/xbill/DNS/lookup/RedirectOverflowException;

    iget p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/RedirectOverflowException;-><init>(I)V

    throw p1
.end method

.method private maybeFollowRedirectsInAnswer(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;I)Ljava/util/concurrent/CompletionStage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            "Lorg/xbill/DNS/Record;",
            "I)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 633
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 634
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    .line 635
    invoke-virtual {p1}, Lorg/xbill/DNS/lookup/LookupResult;->getRecords()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/Record;

    .line 638
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 639
    new-instance p1, Lorg/xbill/DNS/lookup/RedirectLoopException;

    iget p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/RedirectLoopException;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_1
    iget v4, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    if-ge p3, v4, :cond_5

    .line 646
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v4

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result v5

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 651
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    .line 653
    check-cast v3, Lorg/xbill/DNS/CNAMERecord;

    invoke-virtual {v3}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object v2

    goto :goto_0

    .line 654
    :cond_3
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_4

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->subdomain(Lorg/xbill/DNS/Name;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 655
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    .line 658
    :try_start_0
    move-object v4, v3

    check-cast v4, Lorg/xbill/DNS/DNAMERecord;

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object v2
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 660
    new-instance p2, Lorg/xbill/DNS/lookup/InvalidZoneDataException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Cannot derive DNAME from "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/xbill/DNS/lookup/InvalidZoneDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 663
    :cond_4
    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v4

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 664
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 643
    :cond_5
    new-instance p1, Lorg/xbill/DNS/lookup/RedirectOverflowException;

    iget p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/RedirectOverflowException;-><init>(I)V

    throw p1

    .line 668
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    .line 669
    new-instance p1, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-direct {p1, v1, v0}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 674
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 675
    new-instance p1, Lorg/xbill/DNS/lookup/RedirectLoopException;

    iget p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/RedirectLoopException;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    :cond_8
    iget p1, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    if-ge p3, p1, :cond_9

    .line 683
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p1

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p2

    invoke-static {v2, p1, p2}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object p1

    .line 684
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/lookup/LookupSession;->lookupWithCache(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;

    move-result-object p2

    new-instance v0, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p3}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda6;-><init>(Lorg/xbill/DNS/lookup/LookupSession;Lorg/xbill/DNS/Record;I)V

    .line 685
    invoke-static {p2, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 679
    :cond_9
    new-instance p1, Lorg/xbill/DNS/lookup/RedirectOverflowException;

    iget p2, p0, Lorg/xbill/DNS/lookup/LookupSession;->maxRedirects:I

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/RedirectOverflowException;-><init>(I)V

    throw p1
.end method

.method private resolveRedirects(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            "Lorg/xbill/DNS/Record;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 610
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/lookup/LookupSession;->maybeFollowRedirect(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;I)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private static safeConcat(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 0

    .line 454
    :try_start_0
    invoke-static {p0, p1}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private setResponseToMessageFuture(Lorg/xbill/DNS/SetResponse;Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/SetResponse;",
            "Lorg/xbill/DNS/Record;",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 576
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    new-instance p1, Lorg/xbill/DNS/lookup/NoSuchDomainException;

    .line 578
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p3

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lorg/xbill/DNS/lookup/NoSuchDomainException;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 577
    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 581
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    new-instance p1, Lorg/xbill/DNS/lookup/NoSuchRRSetException;

    .line 583
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object p3

    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result p2

    invoke-direct {p1, p3, p2}, Lorg/xbill/DNS/lookup/NoSuchRRSetException;-><init>(Lorg/xbill/DNS/Name;I)V

    .line 582
    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 586
    :cond_1
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 587
    new-instance p2, Lorg/xbill/DNS/lookup/LookupResult;

    .line 588
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 587
    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 589
    :cond_2
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 590
    new-instance p2, Lorg/xbill/DNS/lookup/LookupResult;

    .line 591
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, p1, p3}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 590
    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 592
    :cond_3
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 594
    invoke-virtual {p1}, Lorg/xbill/DNS/SetResponse;->answers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda7;-><init>(Lorg/xbill/DNS/lookup/LookupSession;)V

    .line 595
    invoke-static {p1, p2}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 596
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 597
    new-instance p2, Lorg/xbill/DNS/lookup/LookupResult;

    invoke-direct {p2, p1, p3}, Lorg/xbill/DNS/lookup/LookupResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method expandName(Lorg/xbill/DNS/Name;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            ")",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    .line 433
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->searchPath:Ljava/util/List;

    .line 438
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda14;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda14;-><init>(Lorg/xbill/DNS/Name;)V

    .line 439
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda15;-><init>()V

    .line 440
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda16;-><init>()V

    .line 441
    invoke-static {v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 443
    invoke-virtual {p1}, Lorg/xbill/DNS/Name;->labels()I

    move-result v1

    iget v2, p0, Lorg/xbill/DNS/lookup/LookupSession;->ndots:I

    if-le v1, v2, :cond_1

    .line 444
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/lookup/LookupSession;->safeConcat(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 446
    :cond_1
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p1, v1}, Lorg/xbill/DNS/lookup/LookupSession;->safeConcat(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method getCache(I)Lorg/xbill/DNS/Cache;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->caches:Ljava/util/Map;

    .line 384
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/Cache;

    return-object p1
.end method

.method synthetic lambda$lookupUntilSuccess$2$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Lorg/xbill/DNS/lookup/LookupResult;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 489
    invoke-direct {p0, p2, p1}, Lorg/xbill/DNS/lookup/LookupSession;->resolveRedirects(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$lookupUntilSuccess$3$org-xbill-DNS-lookup-LookupSession(Ljava/util/Iterator;IILorg/xbill/DNS/lookup/LookupResult;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 1

    .line 0
    if-nez p5, :cond_0

    const/4 p5, 0x0

    goto :goto_0

    .line 492
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p5

    .line 493
    :goto_0
    instance-of v0, p5, Lorg/xbill/DNS/lookup/NoSuchDomainException;

    if-nez v0, :cond_3

    instance-of v0, p5, Lorg/xbill/DNS/lookup/NoSuchRRSetException;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 500
    invoke-direct {p0, p5}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 502
    :cond_2
    invoke-static {p4}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 494
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 495
    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/lookup/LookupSession;->lookupUntilSuccess(Ljava/util/Iterator;II)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 497
    :cond_4
    invoke-direct {p0, p5}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$lookupWithCache$5$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Ljava/util/List;Lorg/xbill/DNS/SetResponse;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 520
    invoke-direct {p0, p3, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession;->setResponseToMessageFuture(Lorg/xbill/DNS/SetResponse;Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$lookupWithCache$6$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 521
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession;->lookupWithResolver(Lorg/xbill/DNS/Record;Ljava/util/List;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$lookupWithResolver$7$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Record;Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 6

    .line 0
    :try_start_0
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    .line 537
    sget-object v1, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->THROW:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 538
    :goto_0
    invoke-virtual {p3, p1, v0}, Lorg/xbill/DNS/Message;->normalize(Lorg/xbill/DNS/Message;Z)Lorg/xbill/DNS/Message;

    move-result-object p1

    sget-object v0, Lorg/xbill/DNS/lookup/LookupSession;->log:Lorg/slf4j/Logger;

    const-string v1, "Normalized response for <{}/{}/{}> from \n{}\ninto\n{}"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    .line 542
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v5

    aput-object v5, v4, v3

    .line 543
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 544
    invoke-virtual {p2}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p2

    invoke-static {p2}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    aput-object p2, v4, v2

    const/4 p2, 0x3

    aput-object p3, v4, p2

    const/4 p2, 0x4

    aput-object p1, v4, p2

    .line 540
    invoke-interface {v0, v1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    .line 548
    new-instance p1, Lorg/xbill/DNS/lookup/InvalidZoneDataException;

    const-string p2, "Failed to normalize message"

    invoke-direct {p1, p2}, Lorg/xbill/DNS/lookup/InvalidZoneDataException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 551
    :cond_1
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1
    :try_end_0
    .catch Lorg/xbill/DNS/WireParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 553
    new-instance p2, Lorg/xbill/DNS/lookup/LookupFailedException;

    const-string p3, "Message normalization failed, refusing to return it"

    invoke-direct {p2, p3, p1}, Lorg/xbill/DNS/lookup/LookupFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p2}, Lorg/xbill/DNS/lookup/LookupSession;->completeExceptionally(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$maybeFollowRedirectsInAnswer$11$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/Record;ILorg/xbill/DNS/lookup/LookupResult;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 687
    invoke-direct {p0, p3, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession;->maybeFollowRedirect(Lorg/xbill/DNS/lookup/LookupResult;Lorg/xbill/DNS/Record;I)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setResponseToMessageFuture$10$org-xbill-DNS-lookup-LookupSession(Lorg/xbill/DNS/RRset;)Ljava/util/stream/Stream;
    .locals 1

    .line 0
    iget-boolean v0, p0, Lorg/xbill/DNS/lookup/LookupSession;->cycleResults:Z

    .line 595
    invoke-virtual {p1, v0}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public lookupAsync(Lorg/xbill/DNS/Name;I)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "I)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 406
    invoke-virtual {p0, p1, p2, v0}, Lorg/xbill/DNS/lookup/LookupSession;->lookupAsync(Lorg/xbill/DNS/Name;II)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public lookupAsync(Lorg/xbill/DNS/Name;II)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Name;",
            "II)",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-virtual {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession;->expandName(Lorg/xbill/DNS/Name;)Ljava/util/List;

    move-result-object p1

    .line 419
    invoke-direct {p0, p1, p2}, Lorg/xbill/DNS/lookup/LookupSession;->lookupWithHosts(Ljava/util/List;I)Lorg/xbill/DNS/lookup/LookupResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1

    .line 424
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/lookup/LookupSession;->lookupUntilSuccess(Ljava/util/Iterator;II)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public lookupAsync(Lorg/xbill/DNS/Record;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Record;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/lookup/LookupResult;",
            ">;"
        }
    .end annotation

    .line 395
    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result v1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getDClass()I

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/xbill/DNS/lookup/LookupSession;->lookupAsync(Lorg/xbill/DNS/Name;II)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
