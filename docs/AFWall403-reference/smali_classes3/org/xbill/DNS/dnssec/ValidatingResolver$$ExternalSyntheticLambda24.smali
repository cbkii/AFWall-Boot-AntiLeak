.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/SMessage;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;->f$0:Lorg/xbill/DNS/dnssec/SMessage;

    iput-boolean p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;->f$0:Lorg/xbill/DNS/dnssec/SMessage;

    iget-boolean v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda24;->f$1:Z

    invoke-static {v0, v1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$validateNameErrorResponse$6(Lorg/xbill/DNS/dnssec/SMessage;Z)V

    return-void
.end method
