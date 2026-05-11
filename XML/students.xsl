<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Student Details</title>

    <style>
        table {
            border-collapse: collapse;
            width: 80%;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: lightblue;
        }
    </style>

</head>

<body>

<h2>Student Information</h2>

<table>

<tr>
    <th>Student ID</th>
    <th>Name</th>
    <th>Department</th>
    <th>Semester</th>
    <th>Subject</th>
    <th>Marks</th>
</tr>

<xsl:for-each select="students/student">

    <xsl:for-each select="subjects/subject">

        <tr>

            <td>
                <xsl:value-of select="../../studentId"/>
            </td>

            <td>
                <xsl:value-of select="../../name"/>
            </td>

            <td>
                <xsl:value-of select="../../department"/>
            </td>

            <td>
                <xsl:value-of select="../../semester"/>
            </td>

            <td>
                <xsl:value-of select="subjectName"/>
            </td>

            <td>
                <xsl:value-of select="marks"/>
            </td>

        </tr>

    </xsl:for-each>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>

</xsl:stylesheet>