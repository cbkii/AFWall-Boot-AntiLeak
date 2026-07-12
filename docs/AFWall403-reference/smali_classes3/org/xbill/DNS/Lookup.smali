.class public final Lorg/xbill/DNS/Lookup;
.super Ljava/lang/Object;
.source "Lookup.java"


# static fields
.field public static final HOST_NOT_FOUND:I = 0x3

.field public static final SUCCESSFUL:I = 0x0

.field public static final TRY_AGAIN:I = 0x2

.field public static final TYPE_NOT_FOUND:I = 0x4

.field public static final UNRECOVERABLE:I = 0x1

.field private static defaultCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/xbill/DNS/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultHostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

.field private static defaultNdots:I

.field private static defaultResolver:Lorg/xbill/DNS/Resolver;

.field private static defaultSearchPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lorg/slf4j/Logger;

.field private static final noAliases:[Lorg/xbill/DNS/Name;


# instance fields
.field private aliases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field private answers:[Lorg/xbill/DNS/Record;

.field private badresponse:Z

.field private badresponse_error:Ljava/lang/String;

.field private cache:Lorg/xbill/DNS/Cache;

.field private credibility:I

.field private cycleResults:Z

.field private final dclass:I

.field private done:Z

.field private doneCurrent:Z

.field private error:Ljava/lang/String;

.field private foundAlias:Z

.field private hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

.field private iterations:I

.field private final maxIterations:I

.field private final name:Lorg/xbill/DNS/Name;

.field private nametoolong:Z

.field private ndots:I

.field private networkerror:Z

.field private nxdomain:Z

.field private referral:Z

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private result:I

.field private searchPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field

.field private temporary_cache:Z

.field private timedout:Z

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Lookup;

    .line 42
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/Lookup;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/xbill/DNS/Name;

    sput-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    .line 111
    invoke-static {}, Lorg/xbill/DNS/Lookup;->refreshDefault()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 378
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 367
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    .line 354
    invoke-static {p1}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;)Lorg/xbill/DNS/Name;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;)V
    .locals 1

    const/4 v0, 0x1

    .line 340
    invoke-direct {p0, p1, v0, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;I)V
    .locals 1

    const/4 v0, 0x1

    .line 330
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/Lookup;-><init>(Lorg/xbill/DNS/Name;II)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Name;II)V
    .locals 1

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->cycleResults:Z

    .line 298
    invoke-static {p2}, Lorg/xbill/DNS/Type;->check(I)V

    .line 299
    invoke-static {p3}, Lorg/xbill/DNS/DClass;->check(I)V

    .line 300
    invoke-static {p2}, Lorg/xbill/DNS/Type;->isRR(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xff

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot query for meta-types other than ANY"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    iput p2, p0, Lorg/xbill/DNS/Lookup;->type:I

    iput p3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const-class p1, Lorg/xbill/DNS/Lookup;

    .line 306
    monitor-enter p1

    .line 307
    :try_start_0
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultResolver()Lorg/xbill/DNS/Resolver;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 308
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultSearchPath()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    .line 309
    invoke-static {p3}, Lorg/xbill/DNS/Lookup;->getDefaultCache(I)Lorg/xbill/DNS/Cache;

    move-result-object p2

    iput-object p2, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 310
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget p1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    iput p1, p0, Lorg/xbill/DNS/Lookup;->ndots:I

    const/4 p1, 0x3

    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string p1, "dnsjava.lookup.max_iterations"

    const-string p2, "16"

    .line 315
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/Lookup;->maxIterations:I

    const-string p1, "dnsjava.lookup.use_hosts_file"

    const-string p2, "true"

    .line 316
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 317
    invoke-static {}, Lorg/xbill/DNS/Lookup;->getDefaultHostsFileParser()Lorg/xbill/DNS/hosts/HostsFileParser;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 310
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private checkDone()V
    .locals 4

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 728
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lookup of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 730
    invoke-static {v1}, Lorg/xbill/DNS/DClass;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 732
    invoke-static {v1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static convertSearchPathDomainList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    .line 231
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/xbill/DNS/Lookup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/xbill/DNS/Lookup$$ExternalSyntheticLambda0;-><init>()V

    .line 232
    invoke-static {p0, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 240
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 242
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lorg/xbill/DNS/NameTooLongException;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 245
    :cond_0
    throw p0
.end method

.method private follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    iget v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->maxIterations:I

    if-ge v1, v2, :cond_2

    .line 509
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_1

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    .line 518
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    return-void

    :cond_2
    :goto_0
    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string p1, "CNAME loop"

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    return-void
.end method

.method public static declared-synchronized getDefaultCache(I)Lorg/xbill/DNS/Cache;
    .locals 3

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/DClass;->check(I)V

    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 140
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache;

    if-nez v1, :cond_0

    .line 142
    new-instance v1, Lorg/xbill/DNS/Cache;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    sget-object v2, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 143
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDefaultHostsFileParser()Lorg/xbill/DNS/hosts/HostsFileParser;
    .locals 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultHostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultResolver()Lorg/xbill/DNS/Resolver;
    .locals 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDefaultSearchPath()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic lambda$convertSearchPathDomainList$0(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .line 235
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 237
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private lookup(Lorg/xbill/DNS/Name;)V
    .locals 10

    .line 564
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookupFromHostsFile(Lorg/xbill/DNS/Name;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v1, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v2, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 568
    invoke-virtual {v0, p1, v1, v2}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    sget-object v1, Lorg/xbill/DNS/Lookup;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget v5, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 569
    invoke-static {v5}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    const/4 v5, 0x2

    aput-object v0, v3, v5

    const-string v7, "Lookup for {}/{}, cache answer: {}"

    invoke-interface {v1, v7, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v0, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v3, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    .line 576
    invoke-static {p1, v0, v3}, Lorg/xbill/DNS/Record;->newRecord(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/Record;

    move-result-object v0

    .line 577
    invoke-static {v0}, Lorg/xbill/DNS/Message;->newQuery(Lorg/xbill/DNS/Record;)Lorg/xbill/DNS/Message;

    move-result-object v0

    const/4 v3, 0x4

    :try_start_0
    iget-object v7, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    .line 580
    invoke-interface {v7, v0}, Lorg/xbill/DNS/Resolver;->send(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v7

    invoke-virtual {v7, v0}, Lorg/xbill/DNS/Message;->normalize(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/Message;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    invoke-virtual {v7}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xbill/DNS/Header;->getRcode()I

    move-result v8

    if-eqz v8, :cond_2

    if-eq v8, v2, :cond_2

    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    .line 603
    invoke-static {v8}, Lorg/xbill/DNS/Rcode;->string(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    return-void

    .line 607
    :cond_2
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v7}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/xbill/DNS/Record;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    const-string p1, "response does not match query"

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    return-void

    :cond_3
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 614
    invoke-virtual {v0, v7}, Lorg/xbill/DNS/Cache;->addMessage(Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    iget v8, p0, Lorg/xbill/DNS/Lookup;->type:I

    iget v9, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    .line 616
    invoke-virtual {v0, p1, v8, v9}, Lorg/xbill/DNS/Cache;->lookupRecords(Lorg/xbill/DNS/Name;II)Lorg/xbill/DNS/SetResponse;

    move-result-object v0

    :cond_4
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    iget v4, p0, Lorg/xbill/DNS/Lookup;->type:I

    .line 620
    invoke-static {v4}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v7}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xbill/DNS/Header;->getID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v0, v3, v2

    const-string v2, "Queried {}/{}, id={}: {}"

    .line 619
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/Lookup;->processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V

    return-void

    :catch_0
    move-exception v1

    sget-object v7, Lorg/xbill/DNS/Lookup;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v4

    .line 585
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Record;->getType()I

    move-result p1

    invoke-static {p1}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    .line 586
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xbill/DNS/Header;->getID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v5

    iget-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    aput-object p1, v8, v2

    aput-object v1, v8, v3

    const-string p1, "Lookup for {}/{}, id={} failed using resolver {}"

    .line 582
    invoke-interface {v7, p1, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    instance-of p1, v1, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_5

    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    goto :goto_0

    :cond_5
    iput-boolean v6, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    :cond_6
    :goto_0
    return-void
.end method

.method private lookupFromHostsFile(Lorg/xbill/DNS/Name;)Z
    .locals 11

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/16 v4, 0x1c

    if-ne v2, v4, :cond_2

    .line 627
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, v2}, Lorg/xbill/DNS/hosts/HostsFileParser;->getAddressForHost(Lorg/xbill/DNS/Name;I)Ljava/util/Optional;

    move-result-object v0

    .line 628
    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    iput-boolean v3, p0, Lorg/xbill/DNS/Lookup;->done:Z

    iget v2, p0, Lorg/xbill/DNS/Lookup;->type:I

    if-ne v2, v3, :cond_1

    new-array v2, v3, [Lorg/xbill/DNS/ARecord;

    .line 632
    new-instance v10, Lorg/xbill/DNS/ARecord;

    iget v6, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const-wide/16 v7, 0x0

    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/net/InetAddress;

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lorg/xbill/DNS/ARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    aput-object v10, v2, v1

    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    goto :goto_0

    :cond_1
    new-array v2, v3, [Lorg/xbill/DNS/AAAARecord;

    .line 634
    new-instance v10, Lorg/xbill/DNS/AAAARecord;

    iget v6, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    const-wide/16 v7, 0x0

    invoke-static {v0}, Lkotlin/io/path/PathTreeWalk$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/net/InetAddress;

    move-object v4, v10

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lorg/xbill/DNS/AAAARecord;-><init>(Lorg/xbill/DNS/Name;IJLjava/net/InetAddress;)V

    aput-object v10, v2, v1

    iput-object v2, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v3

    :catch_0
    move-exception p1

    sget-object v0, Lorg/xbill/DNS/Lookup;->log:Lorg/slf4j/Logger;

    const-string v2, "Local hosts database parsing failed, ignoring and using resolver"

    .line 640
    invoke-interface {v0, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return v1
.end method

.method private processResponse(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/SetResponse;)V
    .locals 3

    .line 523
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->answers()Ljava/util/List;

    move-result-object p1

    .line 525
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/RRset;

    iget-boolean v2, p0, Lorg/xbill/DNS/Lookup;->cycleResults:Z

    .line 528
    invoke-virtual {v0, v2}, Lorg/xbill/DNS/RRset;->rrs(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lorg/xbill/DNS/Lookup;->result:I

    new-array p1, p1, [Lorg/xbill/DNS/Record;

    .line 532
    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/xbill/DNS/Record;

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 534
    :cond_1
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXDOMAIN()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    iget p1, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    if-lez p1, :cond_6

    const/4 p1, 0x3

    iput p1, p0, Lorg/xbill/DNS/Lookup;->result:I

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 541
    :cond_2
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isNXRRSET()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    iput p1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 545
    :cond_3
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isCNAME()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getCNAME()Lorg/xbill/DNS/CNAMERecord;

    move-result-object p2

    .line 547
    invoke-virtual {p2}, Lorg/xbill/DNS/CNAMERecord;->getTarget()Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_1

    .line 548
    :cond_4
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDNAME()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->getDNAME()Lorg/xbill/DNS/DNAMERecord;

    move-result-object p2

    .line 551
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/xbill/DNS/Name;->fromDNAME(Lorg/xbill/DNS/DNAMERecord;)Lorg/xbill/DNS/Name;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/xbill/DNS/Lookup;->follow(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string p1, "Invalid DNAME target"

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    .line 557
    :cond_5
    invoke-virtual {p2}, Lorg/xbill/DNS/SetResponse;->isDelegation()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-boolean v1, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public static declared-synchronized refreshDefault()V
    .locals 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 103
    :try_start_0
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;

    .line 104
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->searchPath()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 106
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->ndots()I

    move-result v1

    sput v1, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    .line 107
    new-instance v1, Lorg/xbill/DNS/hosts/HostsFileParser;

    invoke-direct {v1}, Lorg/xbill/DNS/hosts/HostsFileParser;-><init>()V

    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultHostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/xbill/DNS/Lookup;->iterations:I

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    const/4 v2, -0x1

    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    iput-object v1, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    .line 277
    invoke-virtual {v0}, Lorg/xbill/DNS/Cache;->clearCache()V

    :cond_0
    return-void
.end method

.method private resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xbill/DNS/Lookup;->doneCurrent:Z

    if-nez p2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p1
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_0
    invoke-direct {p0, p1}, Lorg/xbill/DNS/Lookup;->lookup(Lorg/xbill/DNS/Name;)V

    return-void

    :catch_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    return-void
.end method

.method public static declared-synchronized setDefaultCache(Lorg/xbill/DNS/Cache;I)V
    .locals 2

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-static {p1}, Lorg/xbill/DNS/DClass;->check(I)V

    sget-object v1, Lorg/xbill/DNS/Lookup;->defaultCaches:Ljava/util/Map;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultHostsFileParser(Lorg/xbill/DNS/hosts/HostsFileParser;)V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultHostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setDefaultNdots(I)V
    .locals 3

    if-ltz p0, :cond_0

    sput p0, Lorg/xbill/DNS/Lookup;->defaultNdots:I

    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal ndots value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized setDefaultResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultResolver:Lorg/xbill/DNS/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDefaultSearchPath(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/Lookup;->convertSearchPathDomainList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized setDefaultSearchPath([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :try_start_0
    sput-object p0, Lorg/xbill/DNS/Lookup;->defaultSearchPath:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit v0

    return-void

    .line 203
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 205
    sget-object v5, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v4, v5}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sput-object v1, Lorg/xbill/DNS/Lookup;->defaultSearchPath:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs declared-synchronized setDefaultSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/xbill/DNS/Lookup;->setDefaultSearchPath(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setPacketLogger(Lorg/xbill/DNS/PacketLogger;)V
    .locals 1

    const-class v0, Lorg/xbill/DNS/Lookup;

    monitor-enter v0

    .line 257
    :try_start_0
    invoke-static {p0}, Lorg/xbill/DNS/NioClient;->setPacketLogger(Lorg/xbill/DNS/PacketLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getAliases()[Lorg/xbill/DNS/Name;
    .locals 2

    .line 756
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->aliases:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lorg/xbill/DNS/Lookup;->noAliases:[Lorg/xbill/DNS/Name;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Lorg/xbill/DNS/Name;

    .line 760
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Name;

    return-object v0
.end method

.method public getAnswers()[Lorg/xbill/DNS/Record;
    .locals 1

    .line 743
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public getErrorString()Ljava/lang/String;
    .locals 2

    .line 782
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const-string v0, "type not found"

    return-object v0

    .line 798
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "host not found"

    return-object v0

    :cond_3
    const-string v0, "try again"

    return-object v0

    :cond_4
    const-string v0, "unrecoverable error"

    return-object v0

    :cond_5
    const-string v0, "successful"

    return-object v0
.end method

.method public getHostsFileParser()Lorg/xbill/DNS/hosts/HostsFileParser;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .line 771
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->checkDone()V

    iget v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    return v0
.end method

.method public run()[Lorg/xbill/DNS/Record;
    .locals 3

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_0

    .line 670
    invoke-direct {p0}, Lorg/xbill/DNS/Lookup;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 672
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    const/4 v1, 0x0

    .line 673
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 675
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 677
    invoke-virtual {v0}, Lorg/xbill/DNS/Name;->labels()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/Lookup;->ndots:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 678
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    :cond_3
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    .line 684
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Name;

    iget-object v2, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 685
    invoke-direct {p0, v2, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0

    :cond_6
    iget-boolean v1, p0, Lorg/xbill/DNS/Lookup;->foundAlias:Z

    if-eqz v1, :cond_5

    :cond_7
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->name:Lorg/xbill/DNS/Name;

    .line 693
    sget-object v1, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Lookup;->resolve(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)V

    :goto_0
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->done:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->badresponse:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->badresponse_error:Ljava/lang/String;

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->timedout:Z

    if-eqz v0, :cond_9

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string v0, "timed out"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    :cond_9
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->networkerror:Z

    if-eqz v0, :cond_a

    iput v1, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string v0, "network error"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nxdomain:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/Lookup;->result:I

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    :cond_b
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->referral:Z

    if-eqz v0, :cond_c

    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string v0, "referral"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    goto :goto_1

    :cond_c
    iget-boolean v0, p0, Lorg/xbill/DNS/Lookup;->nametoolong:Z

    if-eqz v0, :cond_d

    iput v2, p0, Lorg/xbill/DNS/Lookup;->result:I

    const-string v0, "name too long"

    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->error:Ljava/lang/String;

    iput-boolean v2, p0, Lorg/xbill/DNS/Lookup;->done:Z

    :cond_d
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/Lookup;->answers:[Lorg/xbill/DNS/Record;

    return-object v0
.end method

.method public setCache(Lorg/xbill/DNS/Cache;)V
    .locals 2

    if-nez p1, :cond_0

    .line 440
    new-instance p1, Lorg/xbill/DNS/Cache;

    iget v0, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    invoke-direct {p1, v0}, Lorg/xbill/DNS/Cache;-><init>(I)V

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    goto :goto_0

    .line 443
    :cond_0
    invoke-virtual {p1}, Lorg/xbill/DNS/Cache;->getDClass()I

    move-result v0

    iget v1, p0, Lorg/xbill/DNS/Lookup;->dclass:I

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->cache:Lorg/xbill/DNS/Cache;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/xbill/DNS/Lookup;->temporary_cache:Z

    :goto_0
    return-void

    .line 444
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DClass of cache doesn\'t match DClass of this Lookup instance"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCredibility(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/Lookup;->credibility:I

    return-void
.end method

.method public setCycleResults(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/Lookup;->cycleResults:Z

    return-void
.end method

.method public setHostsFileParser(Lorg/xbill/DNS/hosts/HostsFileParser;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    return-void
.end method

.method public setNdots(I)V
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lorg/xbill/DNS/Lookup;->ndots:I

    return-void

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal ndots value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->resolver:Lorg/xbill/DNS/Resolver;

    return-void
.end method

.method public setSearchPath(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;)V"
        }
    .end annotation

    .line 398
    invoke-static {p1}, Lorg/xbill/DNS/Lookup;->convertSearchPathDomainList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    return-void
.end method

.method public varargs setSearchPath([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xbill/DNS/TextParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    return-void

    .line 424
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 425
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 426
    sget-object v4, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {v3, v4}, Lorg/xbill/DNS/Name;->fromString(Ljava/lang/String;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lorg/xbill/DNS/Lookup;->searchPath:Ljava/util/List;

    return-void
.end method

.method public varargs setSearchPath([Lorg/xbill/DNS/Name;)V
    .locals 0

    .line 409
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/Lookup;->setSearchPath(Ljava/util/List;)V

    return-void
.end method
