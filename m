Return-Path: <usb-storage+bncBDZPLN42WEJRBLWS6CXAMGQE6EH5U4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x645.google.com (mail-pl1-x645.google.com [IPv6:2607:f8b0:4864:20::645])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C6BD8669CB
	for <lists+usb-storage@lfdr.de>; Mon, 26 Feb 2024 07:01:21 +0100 (CET)
Received: by mail-pl1-x645.google.com with SMTP id d9443c01a7336-1dc435b3e87sf17873775ad.1
        for <lists+usb-storage@lfdr.de>; Sun, 25 Feb 2024 22:01:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708927279; cv=pass;
        d=google.com; s=arc-20160816;
        b=nin1NQuQ8/WM1u+5S+P4pwCbmqCSYGzGrx6ZSbU/UjcOkjKrexpJAOI51U+JTWCy9n
         v4lVFKO6UEZ6BamGbSFv1OuxTwZSaFSPYBH2abV333PSOi4boAk0KShSpdtgO16RhR2z
         b7uObi6pkkArbqSPRr+AkY2uw/M3vzvKQqaP9Oi7axgbtZ/dP85b2S6dzxO57A4xIKE0
         dJYoQcyhFN8S1WCCgBsesBOc38SVNkh8AEM6mMqCze5HIYODVqFZ8RMYF7Md5mxBapZf
         jmJpcTIZyirovHUlxeigsEoH7g9Tu5meGjNhRiCr1+Y71gi/W0w2a+O6idnUG9+nZBe/
         qXgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=zalqAzilnJA/7XBGjI8uiwAcWjy51+z/QC4fiSEWb2U=;
        fh=2XhZHLGBk9av728S9lWGubv4hQWR6GoepOEF3VqzarI=;
        b=WDVTYY5cDSZApiIbWLpqeeSkhg0soS4eYOIucW30YbQ8+ctp9HrAU/EFjy2PAxVU3q
         hvLb5GR3WY3nz8nzwmpWTcUUp9sf2N0LbF+mcqwS+lKw8QyP34FMlordejT9jVo1hF2V
         3G5WV/AW9edzRd3EF8mjRiEJhZ08AwL0E6e5I1G4l9c7nJs67qHdj52Gg0AXbggfee5q
         I58K92WccbqIabX19BEd2pDcLwNdB0xBBI+9TUpPStmwdDLJ5jWfFnYYoYQi4MKNNMcH
         /JoGwLQpdOKgB0ZmPPi61j/EhRW26wF8/Iu2eazGlsDWxwj3ds3u1S0ww8EKHakKp5SI
         MerQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=aP7TIsPo;
       spf=pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1708927279; x=1709532079; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zalqAzilnJA/7XBGjI8uiwAcWjy51+z/QC4fiSEWb2U=;
        b=N5CoCqlAqr3iWUouMT5W41dt9MKkYuYT1cHUAuYumowemwmXgo1W7c1K+8YLb3VRBQ
         SqD7CS1ePNEWPN+iehgp2ay000Xy9ggMCIkD3msU8T2dnsHfXV6HcVhmsmz3dfn326nT
         /5JcaW+xjVCLXCOtwPqLWeFnM3ndEVN8a+DwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708927279; x=1709532079;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zalqAzilnJA/7XBGjI8uiwAcWjy51+z/QC4fiSEWb2U=;
        b=cDFACWHBciH8tBxaRmROiZPYEcYQScljhEyIdhi2Ze1xXCM54NNyTmnvU2ORWUqATK
         aB0KpMLLdnRqV8Mh7fvfur4tRS9gIqnwkAmPJ69SX+e7LrJ6+qtj875EFIFpv8Zk64Av
         ZdASiOECSLp6fyP+637rTVZ90IGM1UC/bpJt0tkW/0/zz55vyX8JZmH+ScrThfB2IMUl
         DsGU4MeZ7chyNmbjRMS6UljdtJ5PD9jC9WCIow1YQlgYdk3oARppv5sV7LBEtFTy9BmC
         g10vZc0aInPqKWal/usKSgV2Hj28ZBDgO6wzLo1P65cFVoKtdQYveb8TTfatHJNmEySo
         TI2g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWOa8fm/C9gUkGez1JJ+8tu0kQl34bHY8Fc0dIV/+7525rPcnYlXgXcx3U6TmwBj7JA7A80nNbi7tPxO90RVsJuBHSLA8b8xfri
X-Gm-Message-State: AOJu0YygrgemeWSol9vENvoelujLH5mMTiepX+dc7y3Ieu8W9JOAA+Aj
	Q/l5nV2yqni8lZPWFZgHxBOPd5n9elVKiw1hUIIwVDF7mNRwyDb65I93lY9SZ6Q=
X-Google-Smtp-Source: AGHT+IGh4+yE9zjvtgYnou+RuqA0ubPvQkskhSdHfhzpAhcc54Uth9c4FiKrRN5akbghJkOXTw25Bw==
X-Received: by 2002:a17:903:22cb:b0:1dc:4a90:b87d with SMTP id y11-20020a17090322cb00b001dc4a90b87dmr6175039plg.66.1708927278967;
        Sun, 25 Feb 2024 22:01:18 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:903:324a:b0:1dc:28b5:5410 with SMTP id
 ji10-20020a170903324a00b001dc28b55410ls1168796plb.1.-pod-prod-04-us; Sun, 25
 Feb 2024 22:01:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUdNna/0E5ksNKCNhK9rYx4SXQtLZ16RANNlSKbz5nTOVisWfCUfiZiZqB//yZS/Frhp9oKV35xHyaiyiIlcs4BAaGsjrzZKO0H6aqaz0KMGihpoI0=
X-Received: by 2002:a17:903:1111:b0:1dc:7b6:867a with SMTP id n17-20020a170903111100b001dc07b6867amr4386958plh.21.1708927277595;
        Sun, 25 Feb 2024 22:01:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708927277; cv=none;
        d=google.com; s=arc-20160816;
        b=Cqn0Qs80FdA0TcyGl/pQeQ8JBVgwTjMz5AHCganC488xcXCRo3ZTjmwVRTPYJLNz1s
         PFgdDEcCjrIPzN7ALLPDnw/Y7iyTiMzEAXdqTdTQXwdEDPKn+1JFBf6XqWbFLaMVtf9/
         dPb/UhbwrIDf7IMpXIrr5lM+gZhUV680IjRhjk63mtvGSfnZ62F/HxrbljcX5MkU3DSN
         5EBECtvulfW2QLb5ZQBVxTX37xKBapo/N0JzibISUfbGscd/AHYNQEUu1eMUyEm53bqY
         OrGIbk3SNaGq4Un17eeKLaZG80eFvhPKwv1AZOoOZWzmNoDrxA/KYwQ/zLkF/bZoyUE9
         FUjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=tqZhjtkDHMQm95jqby7Oj+zd+7Dnim/pTy58W8Cj9Wc=;
        fh=LGk+EA+/5i/j+24XfwAPQEQb4m4dPgccjS+/ke1tIcU=;
        b=CNHle+rdMzeDoWzJHVBsKf3KzkoJC7u3zIYulPp8wWpd6CUMAkNSettkmH+BHP6rBm
         oBQ3aHTPFaW7vJRAskwisuVYNxJyBDk9FQlW1OUwJZCw6XHu8/pi1BukPAdgOBuSxHty
         tw2h4JD/EHY3tGh1oSlmnyAPdbneimfQ1F8VRBeNfgsXt8nKgH7rs4ez3/hoKfVuyloJ
         e54dqps6VQOw+G5/pTBj0oe2mSPvWCRht0xl2C1B8hKNOKtqHEED6x8W24fWiNdEIQmk
         HYeeVkCAXbUA0ddCXohrY3td80tVh3qSIGCDw7MCYatdSZWu0gOYm34jV6GAbtFU/+IA
         A9bA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@quicinc.com header.s=qcppdkim1 header.b=aP7TIsPo;
       spf=pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.168.131 as permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com. [205.220.168.131])
        by mx.google.com with ESMTPS id p8-20020a170902e74800b001dc7a686eccsi3167978plf.182.2024.02.25.22.01.17
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Feb 2024 22:01:17 -0800 (PST)
Received-SPF: pass (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.168.131 as permitted sender) client-ip=205.220.168.131;
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41Q5chHF005107;
	Mon, 26 Feb 2024 06:01:17 GMT
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3wgkxmg3c9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 06:01:16 +0000 (GMT)
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 41Q61Grv002872
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 26 Feb 2024 06:01:16 GMT
Received: from [10.253.33.53] (10.80.80.8) by nasanex01a.na.qualcomm.com
 (10.52.223.231) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.40; Sun, 25 Feb
 2024 22:01:14 -0800
Message-ID: <bce66ef7-efb7-4bbe-9d84-d363f046963f@quicinc.com>
Date: Mon, 26 Feb 2024 14:01:12 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] Bluetooth: btusb: Use right timeout macro
 to receive control message
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
CC: <stern@rowland.harvard.edu>, <linux-usb@vger.kernel.org>,
        <usb-storage@lists.one-eyed-alien.net>
References: <1708682416-8664-1-git-send-email-quic_zijuhu@quicinc.com>
 <2024022341-rice-worry-c99b@gregkh>
From: quic_zijuhu <quic_zijuhu@quicinc.com>
In-Reply-To: <2024022341-rice-worry-c99b@gregkh>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: 2vVP_WRtAI2rS4fh0FDuiGTWsFq5Jcdx
X-Proofpoint-ORIG-GUID: 2vVP_WRtAI2rS4fh0FDuiGTWsFq5Jcdx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-26_02,2024-02-23_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 malwarescore=0 mlxlogscore=880 impostorscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2402120000 definitions=main-2402260043
X-Original-Sender: quic_zijuhu@quicinc.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@quicinc.com header.s=qcppdkim1 header.b=aP7TIsPo;       spf=pass
 (google.com: domain of quic_zijuhu@quicinc.com designates 205.220.168.131 as
 permitted sender) smtp.mailfrom=quic_zijuhu@quicinc.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=quicinc.com
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

On 2/23/2024 7:33 PM, Greg KH wrote:
> On Fri, Feb 23, 2024 at 06:00:16PM +0800, Zijun Hu wrote:
>> USB driver defines macro @USB_CTRL_SET_TIMEOUT for sending control message
>> and @USB_CTRL_GET_TIMEOUT for receiving, but sierra_get_swoc_info() wrongly
>> uses @USB_CTRL_SET_TIMEOUT as argument of usb_control_msg() to receive
>> control message, fixed by using @USB_CTRL_GET_TIMEOUT to receive message.
> 
> You do realize they are both the same value, right?  Why don't we just
> change it to USB_CTRL_TIMEOUT so that people don't think changing this
> matters?
> 
1)
will optimize this change title if this change is worthy after code review

2)
yes, i noticed both macros have the same value and carefully read below code block.

include/linux/usb.h:
/*
 * timeouts, in milliseconds, used for sending/receiving control messages
 * they typically complete within a few frames (msec) after they're issued
 * USB identifies 5 second timeouts, maybe more in a few cases, and a few
 * slow devices (like some MGE Ellipse UPSes) actually push that limit.
 */
#define USB_CTRL_GET_TIMEOUT	5000
#define USB_CTRL_SET_TIMEOUT	5000

3)
these two macros are introduced at the same time by Linus Torvalds with commit 1da177e4c3f4 ("Linux-2.6.12-rc2")
below is my points why it is better to keep current two macros than unifying both to one USB_CTRL_TIMEOUT

 point A)
 we can't confirm that sending always have the same timeout as receiving for various devices, it is easy to adjust individual
 macro value if sending potentially does not have the same value as receiving in future.

 point B)
 current two macros defined by usb.h has been used by many usb drivers, there are more drivers need to be corrected if macro NAME are changed.

> thanks,
> 
> greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/bce66ef7-efb7-4bbe-9d84-d363f046963f%40quicinc.com.
