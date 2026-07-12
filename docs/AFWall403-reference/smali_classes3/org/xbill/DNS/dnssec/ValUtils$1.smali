.class synthetic Lorg/xbill/DNS/dnssec/ValUtils$1;
.super Ljava/lang/Object;
.source "ValUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/dnssec/ValUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 873
    invoke-static {}, Lorg/xbill/DNS/dnssec/SecurityStatus;->values()[Lorg/xbill/DNS/dnssec/SecurityStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/xbill/DNS/dnssec/ValUtils$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->INSECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/xbill/DNS/dnssec/ValUtils$1;->$SwitchMap$org$xbill$DNS$dnssec$SecurityStatus:[I

    sget-object v1, Lorg/xbill/DNS/dnssec/SecurityStatus;->SECURE:Lorg/xbill/DNS/dnssec/SecurityStatus;

    invoke-virtual {v1}, Lorg/xbill/DNS/dnssec/SecurityStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
