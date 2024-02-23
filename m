Return-Path: <usb-storage+bncBDZPLN42WEJRBKEO4OXAMGQE7GUGXPQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E95A8617D0
	for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 17:26:18 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-dcc58cddb50sf1681637276.0
        for <lists+usb-storage@lfdr.de>; Fri, 23 Feb 2024 08:26:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708705577; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFAVq0n/rdq5de3W6131CveNISYjsfwF93oMlxnlrmSQ5v48OPcNpMR9/RQAwQvyAO
         EP0C+dzwRWRWBR7kosmnbPNVVG0AWvjDqEKhx6oefPIpqtoZg16vre+S9d5UjbD4jqjv
         pKQ45SrrS5YOKMepa4zZ5mGWePAJ7aF7bJp9fzegBsznsqmJGqDamPwbWWygvDmkgg8t
         SZO+L7XPmj/S0C3lsHqM90ewpgZ/WXm7Z/funy4V8bPG99ZshR9TQX2JjKgKKUGSnuSr
         UOy1plZink35WiZJpGEQnK/Mz46chCpSIts9EpGLtC8NqZiNfz3TOUIpaIl731L2ZE85
         bMYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mvwUnUpkK/urHc79+pcbfDYzol1DH97oTYVdwaV3Wr4=;
        fh=6SMsXuP6LDRi0J6gvQhpt8NV0cSrKe9SpeOf/guqrUs=;
        b=qMduB7fSHl57U/Ny0lTzhXI850BliQxJmRplxX24jGz73MsE6ZrefxkfcLcywivCib
         8jvgCv0FWp3P8C7o9ndYqgSpzN86SS/OA5Lke64gS/Ev+OGoiTxe19oOFiaV2mmiMciv
         fePkDcpt46so3SJfTwvIHieQC315PmVfTRLO9UOM6HqANwAc2iUOQHnQVBY/0CFQ7QwY
         20P0L5+VGMZUSiLF0RaAUF54SLvxUaCiKtbOMXYp6hN3OYhi19Vh5SpZjoH1NlL8Yyvp
         1wDg4i79bbs3Dlky5XU01NHDhfSwmulMucOqQYjpqy8LzUXlOMPwcN2GusA6cmdD8g+4
         21Ag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=I6sZ9Gsq;
       spf=pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708705577; x=1709310377; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=mvwUnUpkK/urHc79+pcbfDYzol1DH97oTYVdwaV3Wr4=;
        b=fpXYUGp4bbt4ViubJK9dZIBBosW0z3Ms4egV8k/TEqRQ1S+pIOLXCOChbz2wJyk4MG
         BZIIi7ZcVDXaum7WSaojVkboYdbwGwIupDAJquAFrkpRUBD8KmMTbci+4k9sdFvM/rZP
         1irLBdhi3m9b+xEV0JUCnJvAlwEez+dszBvwI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708705577; x=1709310377;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:message-id:date:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvwUnUpkK/urHc79+pcbfDYzol1DH97oTYVdwaV3Wr4=;
        b=eGIUnvgeIyVeUgEhIkDQYENc6bPWv1TzKI3GPzsqC1kD978+byCHuBQCju3UTUSuql
         U0Dez6ZQbY/RvBb7zKLE4s46HUKkTIxh4TB9cbtjDvjWS8xlpO+hx6Wjp3vrr2bQxJJ7
         KYL4ek99waEa5t1yqIPDrosrkyFaQU8DS9Bq5ZLyMBRVaVQqMTMYUp4FOgRuefNLO3bb
         AeCVhtrGd9t8oCAwAWhZn5Jifrt01NlZDlQkxwBIal+Md+XujMVQQd4xe4UsrsB7UJQy
         GxWW/Uf1RV2MXmUMWn7YnwTkBk9tCPTXaFc/ea9U92BG7R3aSDUEUBr2ZcW3TAyVL3NV
         CQVw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVt3olLhLc6ObLJpgQ/zJb+hS7Cc2WrFYEq+uJZk4ORWIcX4VDAuwwk99JGxbQEFtgCbfN8q32S/Z286r1mwqmyUgwnm9ff69OB
X-Gm-Message-State: AOJu0Yz38927tvYK2bI/etVtoufhONJ8pOC4WgaXmAABfgQqEOiSQiiR
	7AAzXoNaBffqcudA0jnf1PcNTsYwVX7ZJ9K5ir+QMx14maCcpKt2znSdXfAFvFI=
X-Google-Smtp-Source: AGHT+IGe6zCZ5sawgannuhOIrFnIiIAhvie0rLc/5OKXyNpwueAw92BQ1cYx4U+XMyFNeralWl3SyA==
X-Received: by 2002:a25:ab11:0:b0:dcb:b41c:77ef with SMTP id u17-20020a25ab11000000b00dcbb41c77efmr326196ybi.24.1708705577039;
        Fri, 23 Feb 2024 08:26:17 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:e0d2:0:b0:dcb:f35a:afeb with SMTP id x201-20020a25e0d2000000b00dcbf35aafebls1513092ybg.2.-pod-prod-06-us;
 Fri, 23 Feb 2024 08:26:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUQDGFoQdEsFz1bG8rApLM3KC2zomHTvuJ6/dbav9fn4oUWsJNDpS1fC4vuZH6V/69jIoYAGmUFoXMelQhbyV6LVRlqJUztxBP5fdZfO6l/nOTRQto=
X-Received: by 2002:a05:6902:1245:b0:dc6:5396:c0d4 with SMTP id t5-20020a056902124500b00dc65396c0d4mr77706ybu.1.1708705576578;
        Fri, 23 Feb 2024 08:26:16 -0800 (PST)
Received: by 2002:a05:690c:97:b0:607:ff99:461 with SMTP id 00721157ae682-608b8ca5e8bms7b3;
        Fri, 23 Feb 2024 02:00:24 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUN+zZpJnKsFnP967rztNhON2sWHy5zS9wPMlnxzrTNIAnSCL+TeCWIyL3XdvBLpedL7wbmYvUgYcn30VMj3jHhIul1epk1R0Nwyv4nkmWtWt+R8h0=
X-Received: by 2002:a25:293:0:b0:dcc:a5dc:e9d6 with SMTP id 141-20020a250293000000b00dcca5dce9d6mr1690354ybc.30.1708682423381;
        Fri, 23 Feb 2024 02:00:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708682423; cv=none;
        d=google.com; s=arc-20160816;
        b=BHNLsUPj9fN3xbnMVb+z/Dn9AAFPUIvWYBDiFniNY67filQGmr3uSHs4+LInNVM/+9
         mtJ2Em2tZhUeOJiLTnX9l/DLLLcf/7dwhuJCG4mpJzMnLtLkaC7zvxBNI3+A8mgcwxr/
         w5MWhZBTXTLithxNW/8dHxaRRmv8GDqyQMTi8S43nf4Xxwp7RC+QOUbREVnvSqqM0hqm
         1SOQmDN9oYXEPY1mTX8+3CEoc1/CLg0KODX9j1qalGIK90Rzx7/viReqIo0/YfOVw9C0
         n3xGFq9g/o2uPKqaeSFyU5hqHbn+D31MAG3ChMOZYFpfzyuscBpfurzQyfjPAoZMSi5r
         kVaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=yqB4hgVXOZp5Hdoig8hNyAA4O70+zKaVhFQqqI5Qui0=;
        fh=0CWs97l39rjKVfn7Viepo5hYB+aOAE2dz6rAvtCekVQ=;
        b=stYNky+yv2GKbtzuIc1nghKK1y2pP+Vx9eSnOkVvTHC8Wsk0FGKoMFwAt4J5BV2+P7
         8GzzUg0Hk/jeV2VvairbDmDex3vpJ0lF7+T4ij7iyPsN0bzUWca/9yE1pSVy4gXkn3yF
         stV95C4lOVBw11iEpcmNk/3krtlxH+p3/0DBClM7ABTBLp4BzLZbd2472+qqQxK4DPUP
         S0PDZo3jqHGlx1L7mCHpPGXr5mVmhyXMMGltEoubdV+IUlhxLV23iSsk9injuq04ZpV5
         g+08PwqE+GiYmupMZWRYlboWqz9RT5x15kdBltIsPefsWRVrjRBsmni5PBFhRiQvGpr0
         X5lA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=I6sZ9Gsq;
       spf=pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com. [205.220.180.131])
        by mx.google.com with ESMTPS id v190-20020a2548c7000000b00dcd0a2f4d0dsi2369722yba.58.2024.02.23.02.00.23
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Feb 2024 02:00:23 -0800 (PST)
Received-SPF: pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.180.131 as permitted sender) client-ip=205.220.180.131;
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41N8riPM002581;
	Fri, 23 Feb 2024 10:00:23 GMT
Received: from nasanppmta03.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wer8mr41g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 10:00:22 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA03.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41NA0LlZ006393
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 23 Feb 2024 10:00:21 GMT
Received: from zijuhu-gv.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 23 Feb 2024 02:00:19 -0800
From: Zijun Hu <quic_zijuhu@quicinc.com>
To: <stern@rowland.harvard.edu>, <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
        "Zijun Hu" <quic_zijuhu@quicinc.com>
Subject: [usb-storage] [PATCH] Bluetooth: btusb: Use right timeout macro to
 receive control message
Date: Fri, 23 Feb 2024 18:00:16 +0800
Message-ID: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sdv7UG0YK2aLTCpluD1bptWVJ2HMaWpD
X-Proofpoint-ORIG-GUID: sdv7UG0YK2aLTCpluD1bptWVJ2HMaWpD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-22_15,2024-02-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 clxscore=1011 mlxscore=0
 impostorscore=0 mlxlogscore=932 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402230070
X-Original-Sender: quic_zijuhu@quicinc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcppdkim1 header.b=I6sZ9Gsq;       spf=pass
 (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.180.131 as
 permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

USB driver defines macro @USB_CTRL_SET_TIMEOUT for sending control message
and @USB_CTRL_GET_TIMEOUT for receiving, but sierra_get_swoc_info() wrongly
uses @USB_CTRL_SET_TIMEOUT as argument of usb_control_msg() to receive
control message, fixed by using @USB_CTRL_GET_TIMEOUT to receive message.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/usb/storage/sierra_ms.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
index 177fa6cd143a..8b5a88ea4803 100644
--- a/drivers/usb/storage/sierra_ms.c
+++ b/drivers/usb/storage/sierra_ms.c
@@ -75,7 +75,7 @@ static int sierra_get_swoc_info(struct usb_device *udev,
 			0,				/* __u16 index       */
 			(void *) swocInfo,		/* void *data        */
 			sizeof(struct swoc_info),	/* __u16 size 	     */
-			USB_CTRL_SET_TIMEOUT);		/* int timeout 	     */
+			USB_CTRL_GET_TIMEOUT);		/* int timeout	     */
 
 	swocInfo->LinuxSKU = le16_to_cpu(swocInfo->LinuxSKU);
 	swocInfo->LinuxVer = le16_to_cpu(swocInfo->LinuxVer);
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/1708682416-8664-1-git-send-email-quic_zijuhu%40quicinc.com.
