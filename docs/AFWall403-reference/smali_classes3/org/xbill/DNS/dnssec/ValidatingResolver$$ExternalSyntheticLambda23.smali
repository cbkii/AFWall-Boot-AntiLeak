.class public final synthetic Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

.field public final synthetic f$1:Lorg/xbill/DNS/dnssec/SMessage;

.field public final synthetic f$2:Lorg/xbill/DNS/Name;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/dnssec/ValidatingResolver;Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/dnssec/Nsec3ValidationState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iput-object p2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$1:Lorg/xbill/DNS/dnssec/SMessage;

    iput-object p3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$2:Lorg/xbill/DNS/Name;

    iput p4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$3:I

    iput-object p5, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$0:Lorg/xbill/DNS/dnssec/ValidatingResolver;

    iget-object v1, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$1:Lorg/xbill/DNS/dnssec/SMessage;

    iget-object v2, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$2:Lorg/xbill/DNS/Name;

    iget v3, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$3:I

    iget-object v4, p0, Lorg/xbill/DNS/dnssec/ValidatingResolver$$ExternalSyntheticLambda23;->f$4:Lorg/xbill/DNS/dnssec/Nsec3ValidationState;

    move-object v5, p1

    check-cast v5, Ljava/lang/Void;

    move-object v6, p2

    check-cast v6, Ljava/lang/Throwable;

    invoke-virtual/range {v0 .. v6}, Lorg/xbill/DNS/dnssec/ValidatingResolver;->lambda$validateNodataResponse$4$org-xbill-DNS-dnssec-ValidatingResolver(Lorg/xbill/DNS/dnssec/SMessage;Lorg/xbill/DNS/Name;ILorg/xbill/DNS/dnssec/Nsec3ValidationState;Ljava/lang/Void;Ljava/lang/Throwable;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
