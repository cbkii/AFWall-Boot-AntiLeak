.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/Message;

.field public final synthetic f$2:Lorg/xbill/DNS/dnssec/FindKeyState;

.field public final synthetic f$3:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$1:Lorg/xbill/DNS/Message;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$2:Lorg/xbill/DNS/dnssec/FindKeyState;

    iput-object p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$3:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$1:Lorg/xbill/DNS/Message;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$2:Lorg/xbill/DNS/dnssec/FindKeyState;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda9;->f$3:Ljava/util/concurrent/Executor;

    check-cast p1, Lorg/xbill/DNS/dnssec/SMessage;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$processFindKey$13$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/FindKeyState;Ljava/util/concurrent/Executor;Lorg/xbill/DNS/dnssec/SMessage;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
