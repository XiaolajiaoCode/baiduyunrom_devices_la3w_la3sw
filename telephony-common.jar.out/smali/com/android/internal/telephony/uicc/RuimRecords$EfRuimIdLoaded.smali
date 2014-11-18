.class Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfRuimIdLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    const-string v0, "EF_RUIM_ID"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    .line 513
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    .line 514
    .local v0, data:[B
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RuimId Data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 515
    const/4 v4, 0x0

    aget-byte v3, v0, v4

    .line 516
    .local v3, numOfBytes:I
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 517
    new-array v1, v3, [B

    .line 518
    .local v1, decodeData:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 519
    sub-int v4, v3, v2

    aget-byte v4, v0, v4

    aput-byte v4, v1, v2

    .line 518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$802(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 522
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RUIM_ID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    #getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mRuimId:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$800(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 524
    .end local v1           #decodeData:[B
    .end local v2           #i:I
    :cond_1
    return-void
.end method
