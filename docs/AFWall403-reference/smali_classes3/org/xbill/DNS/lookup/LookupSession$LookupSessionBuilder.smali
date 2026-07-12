.class public Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
.super Ljava/lang/Object;
.source "LookupSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/lookup/LookupSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LookupSessionBuilder"
.end annotation


# instance fields
.field private caches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private cycleResults:Z

.field private executor:Ljava/util/concurrent/Executor;

.field private hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

.field private irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

.field private maxRedirects:I

.field private ndots:I

.field private resolver:Lorg/xbill/DNS/Resolver;

.field private searchPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/Name;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->REMOVE:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-void
.end method

.method synthetic constructor <init>(Lorg/xbill/DNS/lookup/LookupSession$1;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->maxRedirects:I

    return p1
.end method

.method static synthetic access$302(Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;I)I
    .locals 0

    .line 103
    iput p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->ndots:I

    return p1
.end method

.method static synthetic lambda$build$0(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;
    .locals 1

    .line 325
    :try_start_0
    sget-object v0, Lorg/xbill/DNS/Name;->root:Lorg/xbill/DNS/Name;

    invoke-static {p0, v0}, Lorg/xbill/DNS/Name;->concatenate(Lorg/xbill/DNS/Name;Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/Name;

    move-result-object p0
    :try_end_0
    .catch Lorg/xbill/DNS/NameTooLongException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 327
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Search path name too long"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lorg/xbill/DNS/lookup/LookupSession;
    .locals 12

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 321
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder$$ExternalSyntheticLambda1;-><init>()V

    .line 322
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticLambda16;-><init>()V

    .line 330
    invoke-static {v1}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    .line 335
    :goto_0
    new-instance v0, Lorg/xbill/DNS/lookup/LookupSession;

    iget-object v2, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->resolver:Lorg/xbill/DNS/Resolver;

    iget v3, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->maxRedirects:I

    iget v4, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->ndots:I

    iget-object v5, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    iget-boolean v6, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->cycleResults:Z

    iget-object v7, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    iget-object v8, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    iget-object v9, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->executor:Ljava/util/concurrent/Executor;

    iget-object v10, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/xbill/DNS/lookup/LookupSession;-><init>(Lorg/xbill/DNS/Resolver;IILjava/util/List;ZLjava/util/List;Lorg/xbill/DNS/hosts/HostsFileParser;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/lookup/IrrelevantRecordMode;Lorg/xbill/DNS/lookup/LookupSession$1;)V

    return-object v0
.end method

.method public cache(Ljava/lang/Integer;Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p0, p2}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->cache(Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    return-object p0

    .line 296
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cache is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "dclass is marked non-null but is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cache(Lorg/xbill/DNS/Cache;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/Cache;

    .line 254
    invoke-virtual {v1}, Lorg/xbill/DNS/Cache;->getDClass()I

    move-result v2

    invoke-virtual {p1}, Lorg/xbill/DNS/Cache;->getDClass()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    .line 259
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 249
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "cache is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public caches(Ljava/util/Collection;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/xbill/DNS/Cache;",
            ">;)",
            "Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 271
    new-instance v0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder$$ExternalSyntheticLambda2;-><init>(Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;)V

    invoke-static {p1, v0}, Lorg/xbill/DNS/lookup/LookupSession$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-object p0

    .line 270
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "caches is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public caches(Ljava/util/Map;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/xbill/DNS/Cache;",
            ">;)",
            "Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 312
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches(Ljava/util/Collection;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;

    move-result-object p1

    return-object p1

    .line 311
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "caches is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearCaches()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-object p0
.end method

.method public clearSearchPath()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-object p0
.end method

.method public cycleResults(Z)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->cycleResults:Z

    return-object p0
.end method

.method public defaultHostsFileParser()Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1

    .line 238
    new-instance v0, Lorg/xbill/DNS/hosts/HostsFileParser;

    invoke-direct {v0}, Lorg/xbill/DNS/hosts/HostsFileParser;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    return-object p0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public hostsFileParser(Lorg/xbill/DNS/hosts/HostsFileParser;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    return-object p0
.end method

.method irrelevantRecordMode(Lorg/xbill/DNS/lookup/IrrelevantRecordMode;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-object p0
.end method

.method public maxRedirects(I)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->maxRedirects:I

    return-object p0
.end method

.method public ndots(I)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->ndots:I

    return-object p0
.end method

.method public resolver(Lorg/xbill/DNS/Resolver;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->resolver:Lorg/xbill/DNS/Resolver;

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "resolver is marked non-null but is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public searchPath(Ljava/util/Collection;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/xbill/DNS/Name;",
            ">;)",
            "Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    .line 173
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public searchPath(Lorg/xbill/DNS/Name;)Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    .line 160
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LookupSession.LookupSessionBuilder(resolver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->resolver:Lorg/xbill/DNS/Resolver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxRedirects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->maxRedirects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ndots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->ndots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", searchPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->searchPath:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cycleResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->cycleResults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", caches="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->caches:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hostsFileParser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->hostsFileParser:Lorg/xbill/DNS/hosts/HostsFileParser;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", executor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->executor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", irrelevantRecordMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xbill/DNS/lookup/LookupSession$LookupSessionBuilder;->irrelevantRecordMode:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
