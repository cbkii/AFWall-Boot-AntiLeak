.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda18;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda18;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    check-cast p1, Lorg/xbill/DNS/dnssec/SMessage;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$sendAsync$17$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;)Lorg/xbill/DNS/Message;

    move-result-object p1

    return-object p1
.end method
