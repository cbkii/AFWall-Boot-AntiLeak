.class Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;
.super Ljava/lang/Object;
.source "ExtendedResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/ExtendedResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolverEntry"
.end annotation


# instance fields
.field private final failures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final resolver:Lorg/xbill/DNS/Resolver;


# direct methods
.method constructor <init>(Lorg/xbill/DNS/Resolver;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;-><init>(Lorg/xbill/DNS/Resolver;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-void
.end method

.method public constructor <init>(Lorg/xbill/DNS/Resolver;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->resolver:Lorg/xbill/DNS/Resolver;

    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->failures:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$500(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Lorg/xbill/DNS/Resolver;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->resolver:Lorg/xbill/DNS/Resolver;

    return-object p0
.end method

.method static synthetic access$700(Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 140
    iget-object p0, p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->failures:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$ResolverEntry;->resolver:Lorg/xbill/DNS/Resolver;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
