.class public Ldev/ukanth/ufirewall/log/LogInfo;
.super Ljava/lang/Object;
.source "LogInfo.java"


# static fields
.field private static prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;


# instance fields
.field public appName:Ljava/lang/String;

.field public dpt:I

.field public dst:Ljava/lang/String;

.field private final dstBlocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public host:Ljava/lang/String;

.field public in:Ljava/lang/String;

.field public len:I

.field public out:Ljava/lang/String;

.field public proto:Ljava/lang/String;

.field public spt:I

.field public src:Ljava/lang/String;

.field public timestamp:J

.field totalBlocked:I

.field public type:I

.field public uid:I

.field public uidString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogInfo;->host:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    return-void
.end method

.method public static parseLog(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ldev/ukanth/ufirewall/log/LogData;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ":\t"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v4, 0x0

    .line 98
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/log/LogData;

    .line 99
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 101
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ldev/ukanth/ufirewall/log/LogInfo;

    if-nez v9, :cond_0

    .line 103
    new-instance v9, Ldev/ukanth/ufirewall/log/LogInfo;

    invoke-direct {v9}, Ldev/ukanth/ufirewall/log/LogInfo;-><init>()V

    .line 106
    :cond_0
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getDst()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    .line 107
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getDpt()I

    move-result v10

    iput v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    .line 108
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getSpt()I

    move-result v10

    iput v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->spt:I

    .line 109
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getProto()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    .line 110
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getLen()I

    move-result v10

    iput v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->len:I

    .line 111
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getSrc()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ldev/ukanth/ufirewall/log/LogInfo;->src:Ljava/lang/String;

    .line 112
    invoke-virtual {v6}, Ldev/ukanth/ufirewall/log/LogData;->getOut()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Ldev/ukanth/ufirewall/log/LogInfo;->out:Ljava/lang/String;

    .line 113
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    iget v6, v9, Ldev/ukanth/ufirewall/log/LogInfo;->totalBlocked:I

    add-int/2addr v6, v7

    iput v6, v9, Ldev/ukanth/ufirewall/log/LogInfo;->totalBlocked:I

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 116
    iget-object v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 117
    iget-object v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 119
    :cond_1
    iget-object v8, v9, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 122
    :cond_2
    invoke-static {v0, v4}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 127
    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, ""

    .line 133
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 136
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 137
    iget v15, v14, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v15, v7, :cond_3

    .line 138
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 139
    iget-object v7, v14, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Ljava/lang/String;

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_6

    .line 147
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 148
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v0, v10}, Ldev/ukanth/ufirewall/util/UidResolver;->resolveUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v11

    move v13, v7

    goto :goto_4

    .line 151
    :cond_5
    sget v7, Ldev/ukanth/ufirewall/R$string;->unknown_item:I

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 153
    :cond_6
    :goto_4
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/log/LogInfo;

    .line 154
    iget v10, v7, Ldev/ukanth/ufirewall/log/LogInfo;->totalBlocked:I

    .line 155
    iget-object v12, v7, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v14, "\n"

    if-lez v12, :cond_7

    .line 156
    :try_start_1
    iget-object v12, v7, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 157
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Ldev/ukanth/ufirewall/log/LogInfo;->dstBlocked:Ljava/util/HashMap;

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    goto :goto_5

    :cond_7
    const-string v6, "AppID :\t"

    .line 161
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget v6, Ldev/ukanth/ufirewall/R$string;->LogAppName:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget v6, Ldev/ukanth/ufirewall/R$string;->LogPackBlock:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\t---------\n"

    .line 173
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 178
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 179
    sget v1, Ldev/ukanth/ufirewall/R$string;->no_log:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    return-object v4
.end method

.method public static parseLogs(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)Ldev/ukanth/ufirewall/log/LogInfo;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "AFWall"

    const/16 v4, -0x64

    .line 188
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 191
    new-instance v6, Ldev/ukanth/ufirewall/log/LogInfo;

    invoke-direct {v6}, Ldev/ukanth/ufirewall/log/LogInfo;-><init>()V

    .line 193
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    .line 194
    invoke-static {v1, v8}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 198
    :goto_0
    :try_start_0
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_13

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-ne v13, v12, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "UID="

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v11, " "

    if-eq v2, v12, :cond_1

    .line 203
    :try_start_1
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_1

    add-int/lit8 v2, v2, 0x4

    .line 204
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 207
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    move-object v5, v2

    :cond_1
    const-string v2, "DST="

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_2

    .line 212
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_2

    add-int/lit8 v2, v2, 0x4

    .line 213
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    :cond_2
    const-string v2, "DPT="

    .line 217
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_3

    .line 218
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_3

    add-int/lit8 v2, v2, 0x4

    .line 219
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    :cond_3
    const-string v2, "SPT="

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_4

    .line 224
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_4

    add-int/lit8 v2, v2, 0x4

    .line 225
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->spt:I

    :cond_4
    const-string v2, "PROTO="

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_5

    .line 230
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_5

    add-int/lit8 v2, v2, 0x6

    .line 231
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    :cond_5
    const-string v2, "LEN="

    .line 235
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_6

    .line 236
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_6

    add-int/lit8 v2, v2, 0x4

    .line 237
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->len:I

    :cond_6
    const-string v2, "SRC="

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_7

    .line 242
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v12, :cond_7

    add-int/lit8 v2, v2, 0x4

    .line 243
    invoke-virtual {v0, v2, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v6, Ldev/ukanth/ufirewall/log/LogInfo;->src:Ljava/lang/String;

    :cond_7
    const-string v2, "OUT="

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v12, :cond_a

    .line 248
    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v12, :cond_a

    add-int/lit8 v2, v2, 0x4

    .line 249
    invoke-virtual {v0, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 251
    invoke-static {v1, v10}, Ldev/ukanth/ufirewall/InterfaceTracker;->getCurrentCfg(Landroid/content/Context;Z)Ldev/ukanth/ufirewall/InterfaceDetails;

    move-result-object v0

    iget v0, v0, Ldev/ukanth/ufirewall/InterfaceDetails;->netType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const-string v0, "eth"

    goto :goto_1

    :cond_8
    const-string v0, "mobile"

    :goto_1
    iput-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->out:Ljava/lang/String;

    goto :goto_2

    :cond_9
    iput-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->out:Ljava/lang/String;

    .line 257
    :cond_a
    :goto_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_b

    return-object v8

    :cond_b
    iget-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "icmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v8

    .line 265
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, ":"

    const-string v8, ""

    if-ne v0, v4, :cond_e

    :try_start_2
    iget-object v11, v6, Ldev/ukanth/ufirewall/log/LogInfo;->src:Ljava/lang/String;

    iget-object v12, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    iget v13, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    iget v14, v6, Ldev/ukanth/ufirewall/log/LogInfo;->spt:I

    iget-object v15, v6, Ldev/ukanth/ufirewall/log/LogInfo;->proto:Ljava/lang/String;

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 267
    invoke-static/range {v11 .. v17}, Ldev/ukanth/ufirewall/util/UidCorrelator;->correlateUid(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)I

    move-result v0

    if-eq v0, v4, :cond_d

    .line 273
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enhanced correlation resolved UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for connection to "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 279
    :cond_d
    sget v0, Ldev/ukanth/ufirewall/R$string;->unknown_item:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v6, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    goto :goto_4

    :cond_e
    :goto_3
    move-object v0, v8

    .line 285
    :goto_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v4, :cond_12

    .line 286
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x7d0

    if-ge v0, v4, :cond_f

    .line 287
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->getSpecialAppName(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v7, 0x3e8

    if-ne v4, v7, :cond_12

    .line 289
    sget v0, Ldev/ukanth/ufirewall/R$string;->android_system:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    .line 294
    :cond_f
    :try_start_3
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 297
    iget v9, v7, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v9, v11, :cond_10

    .line 298
    iget-object v0, v7, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_5

    .line 303
    :cond_11
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 307
    :catch_0
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in LogInfo when trying to find name for uid "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->uid:I

    .line 309
    sget v0, Ldev/ukanth/ufirewall/R$string;->unknown_item:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_12
    :goto_5
    iput-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->appName:Ljava/lang/String;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    .line 320
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dst:Ljava/lang/String;

    .line 321
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->dpt:I

    .line 323
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v0, p3

    iput v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->type:I

    const-string v0, "\n"

    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v6, Ldev/ukanth/ufirewall/log/LogInfo;->timestamp:J

    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Ldev/ukanth/ufirewall/log/LogInfo;->uidString:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object v6

    :catch_1
    move-exception v0

    const-string v1, "Exception in LogService"

    .line 333
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    return-object v6
.end method

.method public static pretty(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ldev/ukanth/ufirewall/log/LogInfo;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lorg/ocpsoft/prettytime/PrettyTime;

    new-instance v1, Ljava/util/Locale;

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;-><init>(Ljava/util/Locale;)V

    sput-object v0, Ldev/ukanth/ufirewall/log/LogInfo;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 71
    invoke-virtual {v0}, Lorg/ocpsoft/prettytime/PrettyTime;->getUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ocpsoft/prettytime/TimeUnit;

    .line 72
    instance-of v2, v1, Lorg/ocpsoft/prettytime/units/JustNow;

    if-eqz v2, :cond_0

    sget-object v0, Ldev/ukanth/ufirewall/log/LogInfo;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 73
    invoke-virtual {v0, v1}, Lorg/ocpsoft/prettytime/PrettyTime;->removeUnit(Lorg/ocpsoft/prettytime/TimeUnit;)Lorg/ocpsoft/prettytime/TimeFormat;

    :cond_1
    sget-object v0, Ldev/ukanth/ufirewall/log/LogInfo;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 78
    invoke-virtual {v0, p0}, Lorg/ocpsoft/prettytime/PrettyTime;->setReference(Ljava/util/Date;)Lorg/ocpsoft/prettytime/PrettyTime;

    sget-object p0, Ldev/ukanth/ufirewall/log/LogInfo;->prettyTime:Lorg/ocpsoft/prettytime/PrettyTime;

    .line 79
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Lorg/ocpsoft/prettytime/PrettyTime;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
