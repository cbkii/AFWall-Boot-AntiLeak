.class final enum Lorg/xbill/DNS/lookup/IrrelevantRecordMode;
.super Ljava/lang/Enum;
.source "IrrelevantRecordMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xbill/DNS/lookup/IrrelevantRecordMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

.field public static final enum REMOVE:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

.field public static final enum THROW:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;


# direct methods
.method private static synthetic $values()[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    const/4 v1, 0x0

    sget-object v2, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->REMOVE:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->THROW:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    const-string v1, "REMOVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->REMOVE:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    .line 9
    new-instance v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    const-string v1, "THROW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->THROW:Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    .line 5
    invoke-static {}, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->$values()[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    move-result-object v0

    sput-object v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->$VALUES:[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xbill/DNS/lookup/IrrelevantRecordMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    .line 5
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-object p0
.end method

.method public static values()[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;
    .locals 1

    sget-object v0, Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->$VALUES:[Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    .line 5
    invoke-virtual {v0}, [Lorg/xbill/DNS/lookup/IrrelevantRecordMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xbill/DNS/lookup/IrrelevantRecordMode;

    return-object v0
.end method
