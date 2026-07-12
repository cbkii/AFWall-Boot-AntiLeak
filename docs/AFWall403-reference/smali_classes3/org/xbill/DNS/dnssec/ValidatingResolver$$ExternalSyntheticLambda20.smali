.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/Message;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda20;->f$0:Lorg/xbill/DNS/Message;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda20;->f$0:Lorg/xbill/DNS/Message;

    check-cast p1, Lorg/xbill/DNS/Message;

    invoke-static {v0, p1}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$sendRequest$10(Lorg/xbill/DNS/Message;Lorg/xbill/DNS/Message;)Lorg/xbill/DNS/dnssec/SMessage;

    move-result-object p1

    return-object p1
.end method
