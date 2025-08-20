<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <title>Melong List</title>
    <link href="style.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
<%

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");

    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>
<div id="wrap">
    <header class="d-flex">
        <div class="logo col-3 d-flex align-items-center">
            <div class="display-5 fw-bold"><a href="/jsp/test/melong/index.jsp" class="text-success nav-link">Melong</a></div>
        </div>
        <div class="search col-5 d-flex align-items-center">

            <form method="GET" action="/jsp/test/melong/detail.jsp">
            <div class="input-group d-flex">

                <input type="text" class="form-control form-control-lg" name="title">
                <button type="submit" class="btn btn-block btn-primary text-white fw-bold">검색</button>

            </div>
            </form>
        </div>
    </header>
    <div class="menu fs-5">
        <ul class="nav">
            <li class="nav-item"><a href="#" class="nav-link text-dark fw-bold">멜롱챠트</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark fw-bold">최신음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark fw-bold">장르음악</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark fw-bold">멜롱DJ</a></li>
            <li class="nav-item"><a href="#" class="nav-link text-dark fw-bold">뮤직어워드</a></li>
        </ul>
    </div>
    <section class="main-menu">
        <div class="singerInfo border border-2 border-success d-flex">
            <div class="singerPhoto p-2">
                <img src="<%=artistInfo.get("photo")%>" width="175px">
            </div>
            <div class="singerDetail w-100 h-100 ml-4 mt-3">
                <h2><%=artistInfo.get("name")%></h2>
                <p>
                        <%=artistInfo.get("agency")%> <br>
                        <%=artistInfo.get("debute")%> 데뷔
                </p>
            </div>
        </div>
        <h4 class="mt-3 fw-bold">곡 목록</h4>
        <div class="musicList">
            <table class="table table-sm text-center">
                <thead>
                <tr>
                    <th>no</th>
                    <th>제목</th>
                    <th>앨범</th>
                </tr>
                </thead>
                <tbody>
                <% for (Map<String, Object> obj:musicList) {%>
                <tr>
                    <td><%=obj.get("id")%></td>
                    <td><a href="/jsp/test/melong/detail.jsp?id=<%=obj.get("id")%>" class="nav-link text-primary"><%=obj.get("title")%></a></td>
                    <td><%=obj.get("album")%></td>
                </tr>
                <%}%>
                </tbody>
            </table>
        </div>
    </section>
    <hr>
    <footer>
        <div class="fs-small text-secondary">Copyright 2025. melong All Rights Reserved.</div>
    </footer>
</div>
</body>
</html>

