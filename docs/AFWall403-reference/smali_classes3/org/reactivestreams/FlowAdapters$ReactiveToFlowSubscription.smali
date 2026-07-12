.class final Lorg/reactivestreams/FlowAdapters$ReactiveToFlowSubscription;
.super Ljava/lang/Object;
.source "FlowAdapters.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/reactivestreams/FlowAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReactiveToFlowSubscription"
.end annotation


# instance fields
.field final flow:Ljava/util/concurrent/Flow$Subscription;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Flow$Subscription;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/reactivestreams/FlowAdapters$ReactiveToFlowSubscription;->flow:Ljava/util/concurrent/Flow$Subscription;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lorg/reactivestreams/FlowAdapters$ReactiveToFlowSubscription;->flow:Ljava/util/concurrent/Flow$Subscription;

    .line 187
    invoke-static {v0}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/Flow$Subscription;)V

    return-void
.end method

.method public request(J)V
    .locals 1

    iget-object v0, p0, Lorg/reactivestreams/FlowAdapters$ReactiveToFlowSubscription;->flow:Ljava/util/concurrent/Flow$Subscription;

    .line 182
    invoke-static {v0, p1, p2}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/util/concurrent/Flow$Subscription;J)V

    return-void
.end method
