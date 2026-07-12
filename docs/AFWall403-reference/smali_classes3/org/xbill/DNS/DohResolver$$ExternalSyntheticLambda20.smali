.class public final synthetic Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/DohResolver;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

.field public final synthetic f$3:Lorg/xbill/DNS/Message;

.field public final synthetic f$4:Ljava/util/concurrent/Executor;

.field public final synthetic f$5:J

.field public final synthetic f$6:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/DohResolver;ZLorg/xbill/DNS/AsyncSemaphore$Permit;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$0:Lorg/xbill/DNS/DohResolver;

    iput-boolean p2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$1:Z

    iput-object p3, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    iput-object p4, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$3:Lorg/xbill/DNS/Message;

    iput-object p5, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$4:Ljava/util/concurrent/Executor;

    iput-wide p6, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$5:J

    iput-object p8, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$6:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$0:Lorg/xbill/DNS/DohResolver;

    iget-boolean v1, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$1:Z

    iget-object v2, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$2:Lorg/xbill/DNS/AsyncSemaphore$Permit;

    iget-object v3, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$3:Lorg/xbill/DNS/Message;

    iget-object v4, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$4:Ljava/util/concurrent/Executor;

    iget-wide v5, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$5:J

    iget-object v7, p0, Lorg/xbill/DNS/DohResolver$$ExternalSyntheticLambda20;->f$6:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lorg/xbill/DNS/AsyncSemaphore$Permit;

    move-object v9, p2

    check-cast v9, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v9}, Lorg/xbill/DNS/DohResolver;->lambda$sendAsync11WithInitialRequestPermit$3$org-xbill-DNS-DohResolver(ZLorg/xbill/DNS/AsyncSemaphore$Permit;Lorg/xbill/DNS/Message;Ljava/util/concurrent/Executor;JLjava/lang/Object;Lorg/xbill/DNS/AsyncSemaphore$Permit;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
