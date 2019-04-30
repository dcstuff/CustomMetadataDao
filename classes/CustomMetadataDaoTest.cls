@IsTest
public class CustomMetadataDaoTest {
    @IsTest
    static void testGetMetadata() {
        List<SObject> customMetadataRecords;
        Test.startTest();
        customMetadataRecords = new CustomMetadataDao().getCustomMetadataRecords('SELECT MasterLabel FROM Some_Metadata__mdt');
        Test.stopTest();

        System.assertEquals([
            SELECT MasterLabel
            FROM Some_Metadata__mdt
        ].size(), customMetadataRecords.size(), 'Size should match');
    }

    public static void setMetadata(String query, List<SObject> records) {
        CustomMetadataDao.customMetadataRecordsMap.put(query, records);
    }
}