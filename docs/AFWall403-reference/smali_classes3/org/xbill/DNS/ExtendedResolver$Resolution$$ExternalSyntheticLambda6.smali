.class public final synthetic Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;


# direct methods
.method public synthetic constructor <init>(Lorg/xbill/DNS/ExtendedResolver$Resolution;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 1

    iget-object v0, p0, Lorg/xbill/DNS/ExtendedResolver$Resolution$$ExternalSyntheticLambda6;->f$0:Lorg/xbill/DNS/ExtendedResolver$Resolution;

    invoke-virtual {v0, p1}, Lorg/xbill/DNS/ExtendedResolver$Resolution;->lambda$new$0$org-xbill-DNS-ExtendedResolver$Resolution(I)I

    move-result p1

    return p1
.end method
