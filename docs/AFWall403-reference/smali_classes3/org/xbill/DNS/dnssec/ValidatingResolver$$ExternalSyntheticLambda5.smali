.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$2:Lorg/xbill/DNS/Message;

.field public final synthetic f$3:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

.field public final synthetic f$4:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$1:Lorg/xbill/DNS/dnssec/SMessage;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$2:Lorg/xbill/DNS/Message;

    iput-object p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$3:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    iput-object p5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$4:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$1:Lorg/xbill/DNS/dnssec/SMessage;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$2:Lorg/xbill/DNS/Message;

    iget-object v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$3:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda5;->f$4:Ljava/util/concurrent/Executor;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    invoke-virtual/range {v0 .. v5}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$processValidate$14$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Message;Lorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/util/concurrent/Executor;Ljava/lang/Void;)Ljava/util/concurrent/CompletionStage;

    move-result-object p1

    return-object p1
.end method
