.class public final synthetic Lorg/xbill/DNS/TimeoutCompletableFuture$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/TimeoutCompletableFuture$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/TimeoutCompletableFuture$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/ScheduledFuture;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lorg/xbill/DNS/TimeoutCompletableFuture;->lambda$orTimeout$1(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
