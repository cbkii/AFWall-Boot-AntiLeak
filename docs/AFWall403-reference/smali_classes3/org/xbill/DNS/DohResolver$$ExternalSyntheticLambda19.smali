.class public final synthetic Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DohResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/Message;

.field public final synthetic f$2:Ljava/util/concurrent/Executor;

.field public final synthetic f$3:J

.field public final synthetic f$4:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DohResolver;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$0:Lorg/xbill/DNS/DohResolver;

    iput-object p2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$1:Lorg/xbill/DNS/Message;

    iput-object p3, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$2:Ljava/util/concurrent/Executor;

    iput-wide p4, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$3:J

    iput-object p6, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$0:Lorg/xbill/DNS/DohResolver;

    iget-object v1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$1:Lorg/xbill/DNS/Message;

    iget-object v2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$2:Ljava/util/concurrent/Executor;

    iget-wide v3, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$3:J

    iget-object v5, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda19;->f$4:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lorg/xbill/DNS/AsyncSemaphore$Permit;

    move-object v7, p2

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v7}, Lorg/xbill/DNS/DohResolver;->lambda$sendAsync11$2$org-xbill-DNS-DohResolver(Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
