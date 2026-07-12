.class synthetic Lorg/xbill/DNS/SetResponse$1;
.super Ljava/lang/Object;
.source "SetResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xbill/DNS/SetResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$xbill$DNS$SetResponseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    invoke-static {}, Lorg/xbill/DNS/SetResponseType;->values()[Lorg/xbill/DNS/SetResponseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    :try_start_0
    sget-object v1, Lorg/xbill/DNS/SetResponseType;->UNKNOWN:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXDOMAIN:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->NXRRSET:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->DELEGATION:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->CNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->DNAME:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lorg/xbill/DNS/SetResponse$1;->$SwitchMap$org$xbill$DNS$SetResponseType:[I

    sget-object v1, Lorg/xbill/DNS/SetResponseType;->SUCCESSFUL:Lorg/xbill/DNS/SetResponseType;

    invoke-virtual {v1}, Lorg/xbill/DNS/SetResponseType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
