.class public final synthetic Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DohResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/Message;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DohResolver;Lorg/xbill/DNS/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;->f$0:Lorg/xbill/DNS/DohResolver;

    iput-object p2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;->f$1:Lorg/xbill/DNS/Message;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;->f$0:Lorg/xbill/DNS/DohResolver;

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda16;->f$1:Lorg/xbill/DNS/Message;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xbill/DNS/DohResolver;->lambda$sendAsync11WithConcurrentRequestPermit$5$org-xbill-DNS-DohResolver(Lorg/xbill/DNS/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
