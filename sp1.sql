-- 建立預存程序
ALTER PROCEDURE dbo.pikachu
    @type  NVARCHAR(1),           -- 輸入參數1
    @ord_num NVARCHAR(1),  -- 輸入參數2
    @OutputParam INT OUTPUT    -- 輸出參數
AS

BEGIN
    SET NOCOUNT ON; -- 防止額外的結果集干擾
    
    BEGIN TRY
        -- 示例業務邏輯
        DECLARE @TempVar INT;

        -- 計算示例
        SELECT COUNT(*)
        FROM job_mst
        WHERE type = @type AND ord_type = @ord_num;

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