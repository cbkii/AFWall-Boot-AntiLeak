.class public final synthetic Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/AsyncSemaphore;

.field public final synthetic f$1:Lorg/xbill/DNS/TimeoutCompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/AsyncSemaphore;Lorg/xbill/DNS/TimeoutCompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;->f$0:Lorg/xbill/DNS/AsyncSemaphore;

    iput-object p2, p0, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;->f$1:Lorg/xbill/DNS/TimeoutCompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;->f$0:Lorg/xbill/DNS/AsyncSemaphore;

    iget-object v1, p0, Lorg/xbill/DNS/AsyncSemaphore$$ExternalSyntheticLambda3;->f$1:Lorg/xbill/DNS/TimeoutCompletableFuture;

    check-cast p1, Lorg/xbill/DNS/AsyncSemaphore$Permit;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xbill/DNS/AsyncSemaphore;->lambda$acquire$0$org-xbill-DNS-AsyncSemaphore(Lorg/xbill/DNS/TimeoutCompletableFuture;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)V

    return-void
.end method
