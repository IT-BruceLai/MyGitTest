-- 建立預存程序
ALTER PROCEDURE dbo.pikachu
    @p1  NVARCHAR(1),           -- 輸入參數1
    @p2 NVARCHAR(1),  -- 輸入參數2
    @OutputParam INT OUTPUT    -- 輸出參數
AS

BEGIN
    SET NOCOUNT ON; -- 防止額外的結果集干擾
    
    BEGIN TRY
        -- 示例業務邏輯
        DECLARE @TempVar INT;

        -- 計算示例
        SELECT COUNT(*)
        FROM apple
        WHERE p1 = @p1 AND ord_p1 = @p2;

        -- 將結果存入輸出參數
        SET @OutputParam = @TempVar;
		PRINT @OutputParam

    END TRY
    BEGIN CATCH
        -- 錯誤處理
        PRINT 'An error occurred.';
        -- 使用內建函數獲取錯誤信息
        THROW;
    END CATCH
END
GO

exec  pikachu S,I,0