.class public final synthetic Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/SimpleResolver;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/xbill/DNS/Message;

.field public final synthetic f$3:Z

.field public final synthetic f$4:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/SimpleResolver;ILorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$0:Lorg/xbill/DNS/SimpleResolver;

    iput p2, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$2:Lorg/xbill/DNS/Message;

    iput-boolean p4, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$3:Z

    iput-object p5, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$4:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$0:Lorg/xbill/DNS/SimpleResolver;

    iget v1, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$2:Lorg/xbill/DNS/Message;

    iget-boolean v3, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$3:Z

    iget-object v4, p0, Lorg/xbill/DNS/SimpleResolver$$ExternalSyntheticLambda3;->f$4:Ljava/util/concurrent/Executor;

    move-object v5, p1

    check-cast v5, [B

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/SimpleResolver;->lambda$sendAsync$1$org-xbill-DNS-SimpleResolver(ILorg/xbill/DNS/Message;ZLjava/util/concurrent/Executor;[B)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
