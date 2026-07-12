.class public final synthetic Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/ResolverListener;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/ResolverListener;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/ResolverListener;

    iput-object p2, p0, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/ResolverListener;

    iget-object v1, p0, Lorg/xbill/DNS/Resolver$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p1, Lorg/xbill/DNS/Message;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, p1, p2}, Lorg/xbill/DNS/Resolver$-CC;->lambda$sendAsync$0(Lorg/xbill/DNS/ResolverListener;Ljava/lang/Object;Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
