.class Lorg/xbill/DNS/ExtendedResolver$Resolution;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ExtendedResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Resolution"
.end annotation


# instance fields
.field private final attempts:[I

.field private currentResolver:I

.field private final endTime:J

.field private final query:Lorg/xbill/DNS/Message;

.field private resolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final retriesPerResolver:I


# direct methods
.method constructor <init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V
    .locals 5

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$100(Lorg/xbill/DNS/ExtendedResolver;)Ljava/time/Duration;

    move-result-object v2

    invoke-static {v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/time/Duration;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->endTime:J

    .line 45
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$200(Lorg/xbill/DNS/ExtendedResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$300(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda6;-><init>(Lorg/xbill/DNS/ExtendedResolver$Resolution;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    if-lez v0, :cond_2

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 49
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int v3, v2, v0

    iget-object v4, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    rem-int/2addr v3, v4

    iget-object v4, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 51
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 58
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda7;-><init>()V

    .line 59
    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 60
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->attempts:[I

    .line 64
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver;->access$400(Lorg/xbill/DNS/ExtendedResolver;)I

    move-result p1

    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retriesPerResolver:I

    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    return-void
.end method

.method static synthetic access$800(Lorg/xbill/DNS/ExtendedResolver$Resolution;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->startAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p0

    return-object p0
.end method

.method private handle(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            "Ljava/lang/Throwable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    iget v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-static {v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$700(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 95
    invoke-static {}, Lorg/xbill/DNS/ExtendedResolver;->access$600()Lorg/slf4j/Logger;

    move-result-object p1

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 97
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 98
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Record;->getType()I

    move-result v2

    invoke-static {v2}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 99
    invoke-virtual {v2}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xbill/DNS/Header;->getID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    iget v4, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 101
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-static {v2}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->attempts:[I

    iget v4, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    aget v2, v2, v4

    .line 102
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retriesPerResolver:I

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const/4 v2, 0x7

    .line 104
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "Failed to resolve {}/{}, id={} with resolver {} ({}) on attempt {} of {}, reason={}"

    .line 95
    invoke-interface {p1, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-wide v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->endTime:J

    .line 108
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 109
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 110
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Timed out while trying to resolve "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 113
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 115
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v0

    iget v0, v0, Lorg/xbill/DNS/Record;->type:I

    invoke-static {v0}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 117
    invoke-virtual {v0}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xbill/DNS/Header;->getID()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object p1

    :cond_0
    iget p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    add-int/2addr p1, v3

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->attempts:[I

    .line 122
    aget p1, v0, p1

    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retriesPerResolver:I

    if-ge p1, v0, :cond_1

    .line 123
    invoke-direct {p0, p3}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    new-instance p2, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p3}, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/ExtendedResolver$Resolution;Ljava/util/concurrent/Executor;)V

    .line 124
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 125
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1

    .line 128
    :cond_1
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 129
    invoke-static {p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Throwable;)Z

    return-object p1

    .line 133
    :cond_2
    new-instance p2, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/IntUnaryOperator;)I

    .line 134
    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method static synthetic lambda$handle$4(I)I
    .locals 2

    if-lez p0, :cond_0

    int-to-double v0, p0

    .line 133
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$1(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)I
    .locals 0

    .line 59
    invoke-static {p0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$700(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method private send(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    iget v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 71
    invoke-static {}, Lorg/xbill/DNS/ExtendedResolver;->access$600()Lorg/slf4j/Logger;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 73
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getName()Lorg/xbill/DNS/Name;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 74
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getQuestion()Lorg/xbill/DNS/Record;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Record;->getType()I

    move-result v3

    invoke-static {v3}, Lorg/xbill/DNS/Type;->string(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    .line 75
    invoke-virtual {v3}, Lorg/xbill/DNS/Message;->getHeader()Lorg/xbill/DNS/Header;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xbill/DNS/Header;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    iget v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v2, v5

    const/4 v3, 0x4

    .line 77
    invoke-static {v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v5

    aput-object v5, v2, v3

    iget-object v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->attempts:[I

    iget v5, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    aget v3, v3, v5

    add-int/2addr v3, v4

    .line 78
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v2, v5

    iget v3, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->retriesPerResolver:I

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v2, v5

    const-string v3, "Sending {}/{}, id={} to resolver {} ({}), attempt {} of {}"

    .line 71
    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->attempts:[I

    iget v2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->currentResolver:I

    .line 80
    aget v3, v1, v2

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 81
    invoke-static {v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v0

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->query:Lorg/xbill/DNS/Message;

    invoke-interface {v0, v1, p1}, Lorg/xbill/DNS/Resolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method private startAsync(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->send(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda3;-><init>(Lorg/xbill/DNS/ExtendedResolver$Resolution;Ljava/util/concurrent/Executor;)V

    .line 87
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    .line 88
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/function/Function;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/CompletionStage;Ljava/util/function/Function;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method synthetic lambda$handle$3$org-xbill-DNS-ExtendedResolver$Resolution(Ljava/util/concurrent/Executor;Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 124
    invoke-direct {p0, p2, p3, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->handle(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$new$0$org-xbill-DNS-ExtendedResolver$Resolution(I)I
    .locals 1

    .line 0
    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution;->resolvers:Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method

.method synthetic lambda$startAsync$2$org-xbill-DNS-ExtendedResolver$Resolution(Ljava/util/concurrent/Executor;Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;
    .locals 0

    .line 87
    invoke-direct {p0, p2, p3, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->handle(Lorg/xbill/DNS/Message;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
