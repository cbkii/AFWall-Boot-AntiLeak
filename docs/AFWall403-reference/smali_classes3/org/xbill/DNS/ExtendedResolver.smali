.class public Lorg/xbill/DNS/ExtendedResolver;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"

# interfaces
.implements Lorg/xbill/DNS/Resolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;,
        Lorg/xbill/DNS/ExtendedResolver$Resolution;
    }
.end annotation


# static fields
.field public static final DEFAULT_RESOLVER_TIMEOUT:Ljava/time/Duration;

.field public static final DEFAULT_TIMEOUT:Ljava/time/Duration;

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final lbStart:Ljava/util/concurrent/atomic/AtomicInteger;

.field private loadBalance:Z

.field private final resolvers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;",
            ">;"
        }
    .end annotation
.end field

.field private retries:I

.field private timeout:Ljava/time/Duration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/xbill/DNS/ExtendedResolver;

    .line 32
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ExtendedResolver;->log:Lorg/slf4j/Logger;

    const-wide/16 v0, 0xa

    .line 159
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_TIMEOUT:Ljava/time/Duration;

    const-wide/16 v0, 0x5

    .line 166
    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m$1(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_RESOLVER_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 169
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    iput v1, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    sget-object v1, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_TIMEOUT:Ljava/time/Duration;

    iput-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    .line 180
    invoke-static {}, Lorg/xbill/DNS/ResolverConfig;->getCurrentConfig()Lorg/xbill/DNS/ResolverConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xbill/DNS/ResolverConfig;->servers()Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-static {v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda3;-><init>()V

    .line 183
    invoke-static {v1, v2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 189
    invoke-static {}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/streams/jdk8/StreamsKt$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/xbill/DNS/Resolver;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    sget-object v0, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_TIMEOUT:Ljava/time/Duration;

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    .line 225
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xbill/DNS/Resolver;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 226
    new-instance v2, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-direct {v2, v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;-><init>(Lorg/xbill/DNS/Resolver;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x3

    iput v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    sget-object v0, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_TIMEOUT:Ljava/time/Duration;

    iput-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    .line 201
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 202
    new-instance v3, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v3, v2}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_RESOLVER_TIMEOUT:Ljava/time/Duration;

    .line 203
    invoke-interface {v3, v2}, Lorg/xbill/DNS/Resolver;->setTimeout(Ljava/time/Duration;)V

    iget-object v2, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 204
    new-instance v4, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-direct {v4, v3}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;-><init>(Lorg/xbill/DNS/Resolver;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/xbill/DNS/Resolver;)V
    .locals 0

    .line 214
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xbill/DNS/ExtendedResolver;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/xbill/DNS/ExtendedResolver;)Ljava/time/Duration;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    return-object p0
.end method

.method static synthetic access$200(Lorg/xbill/DNS/ExtendedResolver;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return p0
.end method

.method static synthetic access$300(Lorg/xbill/DNS/ExtendedResolver;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/xbill/DNS/ExtendedResolver;->lbStart:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$400(Lorg/xbill/DNS/ExtendedResolver;)I
    .locals 0

    .line 33
    iget p0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return p0
.end method

.method static synthetic access$600()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/ExtendedResolver;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic lambda$deleteResolver$3(Lorg/xbill/DNS/Resolver;Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Z
    .locals 0

    .line 333
    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$getResolvers$1(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;
    .locals 0

    .line 323
    invoke-static {p0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getResolvers$2(I)[Lorg/xbill/DNS/Resolver;
    .locals 0

    .line 323
    new-array p0, p0, [Lorg/xbill/DNS/Resolver;

    return-object p0
.end method

.method static synthetic lambda$new$0(Ljava/net/InetSocketAddress;)Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;
    .locals 1

    .line 185
    new-instance v0, Lorg/xbill/DNS/SimpleResolver;

    invoke-direct {v0, p0}, Lorg/xbill/DNS/SimpleResolver;-><init>(Ljava/net/InetSocketAddress;)V

    sget-object p0, Lorg/xbill/DNS/ExtendedResolver;->DEFAULT_RESOLVER_TIMEOUT:Ljava/time/Duration;

    .line 186
    invoke-interface {v0, p0}, Lorg/xbill/DNS/Resolver;->setTimeout(Ljava/time/Duration;)V

    .line 187
    new-instance p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-direct {p0, v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;-><init>(Lorg/xbill/DNS/Resolver;)V

    return-object p0
.end method


# virtual methods
.method public addResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 328
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;-><init>(Lorg/xbill/DNS/Resolver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public deleteResolver(Lorg/xbill/DNS/Resolver;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 333
    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda4;-><init>(Lorg/xbill/DNS/Resolver;)V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public getLoadBalance()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return v0
.end method

.method public getResolver(I)Lorg/xbill/DNS/Resolver;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 315
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 316
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    invoke-static {p1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResolvers()[Lorg/xbill/DNS/Resolver;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 323
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/List;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/xbill/DNS/ExtendedResolver$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/stream/Stream;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/Resolver;

    return-object v0
.end method

.method public getRetries()I
    .locals 1

    iget v0, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return v0
.end method

.method public getTimeout()Ljava/time/Duration;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    return-object v0
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

.method public sendAsync(Lorg/xbill/DNS/Message;)Ljava/util/concurrent/CompletionStage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xbill/DNS/Message;",
            ")",
            "Ljava/util/concurrent/CompletionStage<",
            "Lorg/xbill/DNS/Message;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-static {}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m()Ljava/util/concurrent/ForkJoinPool;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/xbill/DNS/ExtendedResolver;->sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method

.method public sendAsync(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;
    .locals 1
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

    .line 309
    new-instance v0, Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-direct {v0, p0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;-><init>(Lorg/xbill/DNS/ExtendedResolver;Lorg/xbill/DNS/Message;)V

    .line 310
    invoke-static {v0, p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->access$800(Lorg/xbill/DNS/ExtendedResolver$Resolution;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
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

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 254
    invoke-static {v1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver;->setEDNS(IIILjava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs synthetic setEDNS(III[Lorg/xbill/DNS/EDNSOption;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/xbill/DNS/Resolver$-CC;->$default$setEDNS(Lorg/xbill/DNS/Resolver;III[Lorg/xbill/DNS/EDNSOption;)V

    return-void
.end method

.method public setIgnoreTruncation(Z)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 247
    invoke-static {v1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setIgnoreTruncation(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadBalance(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xbill/DNS/ExtendedResolver;->loadBalance:Z

    return-void
.end method

.method public setPort(I)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 232
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 233
    invoke-static {v1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setPort(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRetries(I)V
    .locals 0

    iput p1, p0, Lorg/xbill/DNS/ExtendedResolver;->retries:I

    return-void
.end method

.method public setTCP(Z)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 240
    invoke-static {v1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setTCP(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTSIGKey(Lorg/xbill/DNS/TSIG;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;

    .line 261
    invoke-static {v1}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xbill/DNS/Resolver;->setTSIGKey(Lorg/xbill/DNS/TSIG;)V

    goto :goto_0

    :cond_0
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
    .locals 0

    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver;->timeout:Ljava/time/Duration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExtendedResolver of "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver;->resolvers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
