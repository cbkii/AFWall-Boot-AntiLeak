.class public final synthetic Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;

.field public final synthetic f$1:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/ExtendedResolver$Resolution;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;

    iput-object p2, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;->f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;

    iget-object v1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/Executor;

    check-cast p1, Lorg/xbill/DNS/Message;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, v1, p1, p2}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->lambda$handle$3$org-xbill-DNS-ExtendedResolver$Resolution(Ljava/util/concurrent/Executor;Lorg/xbill/DNS/Message;Ljava/lang/Throwable;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
