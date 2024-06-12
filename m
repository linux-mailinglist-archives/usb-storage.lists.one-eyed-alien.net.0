Return-Path: <usb-storage+bncBCCNRMPMZ4PRBF6OU6ZQMGQEDWCLM3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yw1-x1145.google.com (mail-yw1-x1145.google.com [IPv6:2607:f8b0:4864:20::1145])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C42905AAE
	for <lists+usb-storage@lfdr.de>; Wed, 12 Jun 2024 20:21:13 +0200 (CEST)
Received: by mail-yw1-x1145.google.com with SMTP id 00721157ae682-62834d556fesf3062077b3.3
        for <lists+usb-storage@lfdr.de>; Wed, 12 Jun 2024 11:21:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718216471; cv=pass;
        d=google.com; s=arc-20160816;
        b=P+9xnIXkt3IY9FK1imTgyXxXKVtAbfBhdbguMA9H9TjGubovsB2WNoviatNiv3QyUb
         ma7EY63NbsMNWINUmUZJa7CU8zar1urNxtuHqleDgMi8wT10vEzlsNQD0tEM5DsbmLLQ
         RS4GO8Pmrx9xTMMOmRgZ6pgCWolVEy+tzfXQLgxY//nEA83GeTZVeNKiJMBFeS2Mc9fN
         TST3nUaH8ctelx/ClBGBcWOwlNMaGYtwhUGyZjriUDIrRBlfU9suJ73B+biJ3K6wCL1/
         9NnNjhvDFRf2u6Uiy8oZtQeFLjvdahNCKrAjw8zwRtC2Bk2haKDkVnyJhJ4CvN4scBhj
         Ncnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=HaM4LRUvRdQZ2oQ95nTHom+tGfRCkySD5D6hH9cWY0E=;
        fh=MJFUXDSofe8HbXVTFuHxYkW+ZrLH2c1eHkIltzBJnQo=;
        b=EZbOTHYB2jojo3J5/8VzXN+oMexGxOYsy/EtX+RQKlXl5uB1Lu1R1CKv5FWhgk0dPM
         v1g4O9gx04+Cwi+TycdlGo5vvj5rKqkOlCozWvvD2ABY4Vd/6un+lmaf4Pfs291Tv2uE
         pmB4kKmHxdI88qycGsgIweIL7+jEMtEHZtcaZeap+r0VUZjDmSYMKE2HpInAV3Wu898F
         WKUkDQNWboUxSXPhH/YKYM03vnTvCjTGgGfOuz4UzTIzk3hqE8LLbRtucVmMpv23qqsw
         Q9eX/evvOkEm/bNgud8qhWwHj6SVoiCuG4/31IkBz0OT8Hy6bE0HM1qQWlQlcNZwPx0b
         Awag==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=aSC5nsvt;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1718216471; x=1718821271; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HaM4LRUvRdQZ2oQ95nTHom+tGfRCkySD5D6hH9cWY0E=;
        b=TTYb2BuEy10K7eBI+ESZEHBDT9sCoJzO6rNEYuIsnFQm376sgPT7N3mtDHjmQcAZmN
         29c4sMCp12iAM0/QKvb+srJ6iyav9k9w9i2hdUplASDKe5enp3Ig+74q7DG3WhOJzxGv
         S9XAApGO35ir0i00G2mWHKe717IoeS4jP+huM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718216471; x=1718821271;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HaM4LRUvRdQZ2oQ95nTHom+tGfRCkySD5D6hH9cWY0E=;
        b=GRXwtnJniGEX2XFUWxkGT2LvByedtO0KAcfJYhmA6P0iow9j9AmMTsuQB4nr0dXjTw
         le+JSyr2es3QpzVj9PMAWB7uhF2uhaDC1SyL3oAPV81ijcDz3U9zuIN0+MPAlkUXJsO/
         2XcRlZ7GKS6ecsNHUEsxVB2jTSccaO2rJSovPT53sVuNU+ROEAZ1V7WtCzF/tStxOhp5
         F4mUXM2vIx7x0wKhtefzTKhR0C3y1Cc/Yfg08FRal23Yc8mguX6uQE/bqX5O/GUxtKTk
         B+iCK3yoIHwIm3Rrm3iySe57lBzTRg99wrmlFzX1k52qogBwhBQNL7iqnyUzQElOKjNq
         iivg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWI7OY6z0z8WhxLvVFg1Jnaf4dYM/LEcqFyL1DQkhp7U3msvdrXXsiPg+5M+Ljduz+fnlsRVx/JokbzrQbt32KMXxd7TzUW/Y+/
X-Gm-Message-State: AOJu0YwccadwZYAIA5dgAYcJQssTtUD//sqvf30q4rf8q3TAAhkAaZXa
	XCunAys1svPRFHeQaeMG/5M920JlxwVC6R/FIsS3Y0bLkIUKrr7v6SKrFLAEbHs=
X-Google-Smtp-Source: AGHT+IHZ6cJHcVVsXShHSZ/aQlchJN5lc+2QXSJQG//JEBy47v8+fO3ug9uEwuc+bDueTA6kBbBo+g==
X-Received: by 2002:a25:8f91:0:b0:dfd:b6aa:914e with SMTP id 3f1490d57ef6-dfe6843497amr2245593276.45.1718216471420;
        Wed, 12 Jun 2024 11:21:11 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6902:1249:b0:df4:dbdd:41f5 with SMTP id
 3f1490d57ef6-dfefe6e28f8ls301367276.0.-pod-prod-05-us; Wed, 12 Jun 2024
 11:21:10 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVZwIPJF8hfvntRMBsw4+bgduR3rS/wpeygPJM8W8zpRhEaI445hwP/XqJwZO3hHmg+8aXVai3uKRXHtGe0z0qZjUNWXCZB1KnIjZNLfx1do9417GQ=
X-Received: by 2002:a25:30c4:0:b0:df4:8397:e7ed with SMTP id 3f1490d57ef6-dfe68c09e70mr2373361276.62.1718216470379;
        Wed, 12 Jun 2024 11:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718216470; cv=none;
        d=google.com; s=arc-20160816;
        b=a0JwJqg/h6TkC4QQTdl9yGBpYVgN64BwHK188qtx93RonMJe38Rm/PWpozQYzkgqiG
         Gdj14jQ7MAFxovv4ZgsvRAwnfhbaQv5BEkVgYQoCLFi8fxxpdw6BB8LWtrvalNdrsmeT
         zapQBJSkK260GedsnX7P5t3OaEuq0fSYRIfz31IDzT7nUzCbjLTk1ehBDpAyk8Af7ppO
         yFQhSZdP4XWglPDCqjY753KbYAItPNKL/Mau7pIVD/cBTyQLRWxaaY4wEV6FoZhMG7MU
         cnVvvvfRZTQxWpO15o7M3jwo0ZK3zS/fqQMifUV9Ngm2tbDklK9PQ5o9XRjfwICqC6Tv
         DitQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=1wkuKnY3v6ZgdO1n4RdvPiX2uiSoPI9pme0TEiEkQRM=;
        fh=ds73MQrAni5I4jJKVV72Kh5lVYNJDrfgRSfM9zfBVlM=;
        b=vW5no1DFNZ5ejpdAwudoH85Q26OZm3fH2LvnAOynS54F5fXkJsIRs2Yb3dZhCeSIEf
         HwP9mlVm43olEZwQlvPPW4yQ1YdaBqAESOFTaa+4sBx9H6P/pmD0CZoeXA76/bIr7VVu
         +eh9Ryt4c0pa/GwL2FMRv1BmZJu/SuQeg/bMnlJalboukPvLJM/aBXd2/FrNb8WT350D
         Ij5tZoOyP74DUJa3UVu5ePzceYWMNyUlLNlbD+J91Sr6TxmriQcSLwSADq19+o4LKQbk
         3RLupM8mnLiCiQZT3CjxFrGUL6RE8t2H1VZOOF9ahuWoM/4I3hwNsgJvWdlr4sB/AUGP
         +5uQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=aSC5nsvt;
       spf=pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com. [205.220.180.131])
        by mx.google.com with ESMTPS id 3f1490d57ef6-dfe4fb2073esi802037276.585.2024.06.12.11.21.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2024 11:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131 as permitted sender) client-ip=205.220.180.131;
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 45CGOUB4004125;
	Wed, 12 Jun 2024 18:21:07 GMT
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ype914rq8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jun 2024 18:21:07 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA01.qualcomm.com (8.17.1.19/8.17.1.19) with ESMTPS id 45CIL58U014028
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 12 Jun 2024 18:21:05 GMT
Received: from [10.48.243.20] (10.49.16.6) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Wed, 12 Jun
 2024 11:21:05 -0700
Message-ID: <4300d6a0-66be-4a5d-8c3d-c43043106c4d@quicinc.com>
Date: Wed, 12 Jun 2024 11:21:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] usb: add missing MODULE_DESCRIPTION() macros
Content-Language: en-US
To: Alan Stern <stern@rowland.harvard.edu>
CC: Peter Chen <peter.chen@kernel.org>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Oliver Neukum <oneukum@suse.com>, <linux-usb@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
        <usb-storage@lists.one-eyed-alien.net>,
        <kernel-janitors@vger.kernel.org>
References: <20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com>
 <183a4d6a-30ad-4dce-b54d-3624aba36ac9@rowland.harvard.edu>
From: Jeff Johnson <quic_jjohnson@quicinc.com>
In-Reply-To: <183a4d6a-30ad-4dce-b54d-3624aba36ac9@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01c.na.qualcomm.com (10.47.97.35) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: sCkTRAscjI77nju_y2oFP-bhQIcrga1O
X-Proofpoint-ORIG-GUID: sCkTRAscjI77nju_y2oFP-bhQIcrga1O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-06-12_09,2024-06-12_02,2024-05-17_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 adultscore=0 priorityscore=1501 malwarescore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 suspectscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2405170001
 definitions=main-2406120130
X-Original-Sender: quic_jjohnson@quicinc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcppdkim1 header.b=aSC5nsvt;       spf=pass
 (google.com: domain of quic_jjohnson@quicinc.com designates 205.220.180.131
 as permitted sender) smtp.mailfrom=quic_jjohnson@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

On 6/12/2024 11:16 AM, Alan Stern wrote:
> On Tue, Jun 11, 2024 at 07:37:20PM -0700, Jeff Johnson wrote:
>> With ARCH=x86, make allmodconfig && make W=1 C=1 reports:
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/core/usbcore.o
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/mon/usbmon.o
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/class/usbtmc.o
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/storage/uas.o
>> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/chipidea/ci_hdrc_msm.o
>>
>> Add the missing invocations of the MODULE_DESCRIPTION() macro.
>>
>> Signed-off-by: Jeff Johnson <quic_jjohnson@quicinc.com>
>> ---
>> This is the remaining one-off fixes in usb.
>>
>> Corrections to these descriptions are welcomed. I'm not an expert in
>> this code so in most cases I've taken these descriptions directly from
>> code comments, Kconfig descriptions, or git logs.  History has shown
>> that in some cases these are originally wrong due to cut-n-paste
>> errors, and in other cases the drivers have evolved such that the
>> original information is no longer accurate.
>>
>> Let me know if any of these changes need to be segregated into
>> separate patches to go through different maintainer trees.
> 
>> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
>> index a0c432b14b20..65f9940bc7e8 100644
>> --- a/drivers/usb/core/usb.c
>> +++ b/drivers/usb/core/usb.c
>> @@ -1150,4 +1150,5 @@ static void __exit usb_exit(void)
>>  
>>  subsys_initcall(usb_init);
>>  module_exit(usb_exit);
>> +MODULE_DESCRIPTION("USB support library");
>>  MODULE_LICENSE("GPL");
> 
> I would change this to "USB core host-side support", or something more 
> along those lines.  It's not just a library because it does include 
> several drivers (such as the USB hub driver).  And it's host-side rather 
> than device-side -- that's a separate module.
> 
> Alan Stern

thanks, will reword in the next version

/jeff

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/4300d6a0-66be-4a5d-8c3d-c43043106c4d%40quicinc.com.
