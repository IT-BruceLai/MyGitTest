-- �إ߹w�s�{��
ALTER PROCEDURE dbo.pikachu
    @p1  NVARCHAR(1),           -- ��J�Ѽ�1
    @p2 NVARCHAR(1),  -- ��J�Ѽ�2
    @OutputParam INT OUTPUT    -- ��X�Ѽ�
AS

BEGIN
    SET NOCOUNT ON; -- �����B�~�����G���z�Z
    
    BEGIN TRY
        -- �ܨҷ~���޿�
        DECLARE @TempVar INT;

        -- �p��ܨ�
        SELECT COUNT(*)
        FROM apple
        WHERE p1 = @p1 AND ord_p1 = @p2;

        -- �N���G�s�J��X�Ѽ�
        SET @OutputParam = @TempVar;
		PRINT @OutputParam

    END TRY
    BEGIN CATCH
        -- ���~�B�z
        PRINT 'An error occurred.';
        -- �ϥΤ��ب��������~�H��
        THROW;
    END CATCH
END
GO

exec  pikachu S,I,0