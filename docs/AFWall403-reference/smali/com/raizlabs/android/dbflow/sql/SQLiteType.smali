.class public final enum Lcom/raizlabs/android/dbflow/sql/SQLiteType;
.super Ljava/lang/Enum;
.source "SQLiteType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field public static final enum TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

.field private static final sTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/raizlabs/android/dbflow/sql/SQLiteType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->INTEGER:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 21
    new-instance v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v3, "REAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->REAL:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 26
    new-instance v3, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->TEXT:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 31
    new-instance v5, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/raizlabs/android/dbflow/sql/SQLiteType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->BLOB:Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->$VALUES:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 33
    new-instance v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;

    invoke-direct {v0}, Lcom/raizlabs/android/dbflow/sql/SQLiteType$1;-><init>()V

    sput-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->sTypeMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static containsClass(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->sTypeMap:Ljava/util/Map;

    .line 70
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static get(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->sTypeMap:Ljava/util/Map;

    .line 66
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    const-class v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 11
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object p0
.end method

.method public static values()[Lcom/raizlabs/android/dbflow/sql/SQLiteType;
    .locals 1

    sget-object v0, Lcom/raizlabs/android/dbflow/sql/SQLiteType;->$VALUES:[Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    .line 11
    invoke-virtual {v0}, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/raizlabs/android/dbflow/sql/SQLiteType;

    return-object v0
.end method
