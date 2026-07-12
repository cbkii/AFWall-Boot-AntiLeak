.class Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;
.super Lorg/xbill/DNS/Mnemonic;
.source "SVCBBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SVCBBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParameterMnemonic"
.end annotation


# instance fields
.field private final factories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/function/Supplier<",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "SVCB/HTTPS Parameters"

    const/4 v1, 0x3

    .line 95
    invoke-direct {p0, v0, v1}, Lorg/xbill/DNS/Mnemonic;-><init>(Ljava/lang/String;I)V

    const-string v0, "key"

    .line 96
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->setPrefix(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->setNumericAllowed(Z)V

    const v0, 0xffff

    .line 98
    invoke-virtual {p0, v0}, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->setMaximum(I)V

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->factories:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;)V"
        }
    .end annotation

    .line 103
    invoke-super {p0, p1, p2}, Lorg/xbill/DNS/Mnemonic;->add(ILjava/lang/String;)V

    iget-object p2, p0, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->factories:Ljava/util/HashMap;

    .line 104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getFactory(I)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Supplier<",
            "Lorg/xbill/DNS/SVCBBase$ParameterBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xbill/DNS/SVCBBase$ParameterMnemonic;->factories:Ljava/util/HashMap;

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lorg/xbill/DNS/SIG0$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Ljava/util/function/Supplier;

    move-result-object p1

    return-object p1
.end method
