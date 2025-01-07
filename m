Return-Path: <usb-storage+bncBD4KDUPW5UNBB56X6W5QMGQEO4QCVTQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BFBA048D3
	for <lists+usb-storage@lfdr.de>; Tue,  7 Jan 2025 19:01:28 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-e549e7072fbsf6744681276.2
        for <lists+usb-storage@lfdr.de>; Tue, 07 Jan 2025 10:01:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736272887; cv=pass;
        d=google.com; s=arc-20240605;
        b=O+Hwa4arTsVHU3ADnlAynHfk0Li2LDKOZqkGRjbF3Wei+ksXII8VIJGzilllb1TOko
         9DEws4bPki67m/qAZO3uswjPPPwWPSTUKhVYsd3M/3rjvGJAtxfYvjQ7ycOFBv6SMPCk
         UXndllo9+/1/vmCWyO63cadp7ltInIoWmIFu+QN65Q88Vy4VrgXRB/HayJ1qbQiTAWWl
         QwNqPLeWld3lhuKFaGCUmKhTd/5pOY9o1VAm0ttktcs5idyC4iwRwp4hdoKsZicFX6h4
         zG7RwAyX9IxjCwfkgJ0ojElLOxkrg04V2OxKuleOZBo/kGF5IKGuM/vVMIqWG6kyJ0P0
         tDxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=7JDplTYlAeTloJMB5s0X0ObyeIvyVgYRiaTKWN0kf1E=;
        fh=zEYIMzBq7CiJC4kuEwbXRjJ3NtMlUuaaY6OPuTKxLTo=;
        b=NOpBdgq06ypltm6kzMOulMKKakqhgiYvRsCfGGx7jHCkOrTadBTyy2HMoWAFlyq2uE
         B/PRRdIRC8dMfZSFi9VmwzkRdCuvSAH0zkZ72jTqmMGwixy1BXRSgZwXb1LnQ23j/CR6
         +2axgj5pfJ+pc0eNbUBhiA1v7WcY5npgVIdBBNHU9MoNid94MgNnaKlFUjKwrCohPW8o
         8b19kV4M0uT89Inh2+TAi5cKjSMXskIy/SzjC609GgiP7u7JS0Z4xKHlVvBztkGfpPKK
         lXnkQq81tHjh+FPtqPPJg67jvFPwrMHYYvZyPU3QXjr24RpOi7vJa5b6ZUehouvGG7aG
         F7dg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QiGypGw9;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736272887; x=1736877687; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:from:content-language:references:cc
         :to:subject:user-agent:mime-version:date:message-id:sender:from:to
         :cc:subject:date:message-id:reply-to;
        bh=7JDplTYlAeTloJMB5s0X0ObyeIvyVgYRiaTKWN0kf1E=;
        b=i4BZC+qf+PL/9rglh//9vuz3+ZepTa6iyeoEHvdWV+B+L1YqWMUug9DTfZOBcYiiC4
         wKDyeiyPRMvsjZujTIXCc896kgxP1qHboUoib4O/5BAOmmYafBon8ADKTQGOTJt5Jm4+
         GSH6c+oo2Q0n+1TTsmNuJiFZsBsq+Xf3/1Fu0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736272887; x=1736877687;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7JDplTYlAeTloJMB5s0X0ObyeIvyVgYRiaTKWN0kf1E=;
        b=gAxvPHdyDZSg233z1Bj2a6/M/7R0lbKM8cgnvCCoYZuswQ/yeVL2ZSgfSigC83iaOR
         rEQj0DOZXLTcM8acyuNuzI9S4XZEwHtwBHW/ZEuXFYgPOAd0nOPnOZHfL+RhdZiEtBty
         i7aYf1tIZ1RX41A93Yd+XEuvkJExjn1SBVWFJeyshjOLY5u+xhyzNQaVjXy9VX6L0Q81
         gqgavPiEn9asmNBsu+WCr7dyVfP371Xn6oxUeqpNJVDyQg01y6KvdRpk30F+7MHybSaZ
         u6dBsA+ji0UPzr8pdn9LdbgQRcrNmb1bIFvB6h4qoa5a3Kp8h1e1r3KbxqGH6MPCvg1o
         iONw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWL5p3WCARL3uOX91k9eo5bBtEGOMKdhx/h/OYUjfSrjGjfln+2wA/3/V3jqyVuNtybhp1uyg==@lfdr.de
X-Gm-Message-State: AOJu0YxrLzQlK4hOJc+CxZ5M6xXW3MzqgLn0l/7QcbxFtd7DkJYGHZwy
	2XHO5ISVEBVNCpSW2Q/XEVZHIVSmA084gy1kaM3HRvjwmUIDQ4gb43THzQGWyfY=
X-Google-Smtp-Source: AGHT+IF0u4rIptruzGItEiwNHwiQGydixoPCUewctky89qstSHEv31dXltIXqixIrlaxui2xQUKYSA==
X-Received: by 2002:a25:6d57:0:b0:e47:f4e3:87fd with SMTP id 3f1490d57ef6-e538c20750amr31478122276.5.1736272887303;
        Tue, 07 Jan 2025 10:01:27 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:75d6:0:b0:e38:9c46:1f82 with SMTP id 3f1490d57ef6-e54eabcd783ls237483276.2.-pod-prod-07-us;
 Tue, 07 Jan 2025 10:01:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX1nNwlBn9IOS9QmLrTUNsi7CZXXvzN+/tLkze/4OCnkkhvc5nxLc+eRGoLwfmV3+Tr928P6ahddYVkaA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6902:2845:b0:e4b:6673:8b5c with SMTP id 3f1490d57ef6-e538c206e46mr41976440276.10.1736272886170;
        Tue, 07 Jan 2025 10:01:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736272886; cv=none;
        d=google.com; s=arc-20240605;
        b=YdGFRtgi8M68599mYsa2uB7Rv5xvCIoc0Au315iL6V+dz+scGHiftUFMCwkMIggEXd
         BTZ+fGgRJRqtketIWxhs1hGROJ3oExbQeUcWVVCo4H2JegOOTOmH6D7gBQs+CCaDhCLQ
         03OALfCfj+znCtXbn0mjefiUcZoGyra/d1o0+gcXBf42Pe8VvLavVw21dOFjI3cx6IUa
         LabMeU6sSum0eRvN02MhRa4nlkdMH0DCfEsecESTqz9gcVW7W9Bk5Uw4EOBkDjohscdP
         CBwi6pkbsnOxslIALVLHzAPxB0dAAgjO8Ai98TjGNQ8O6VshYydpVtLSo/zwPN0w3619
         buPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=WV+TLZuDtrq0vN0L2SGNhb5nPcib4hM5tam8yfuu2ms=;
        fh=wC5V8QQsOkBKJqKElVTGqyBTcD6ODgNp7g//iXCbcNg=;
        b=EPUVuwu9RiNRavvujK47xAXgU/PBIeg4EMETwW7e0wttJklvPNQHlJ+ZSXxZiJoF00
         NHiH68lTDFi8X8ytffH5nGOtKNoVTPqinX3adJJzV2Eez6MfKdojaCUH+WnmC9OiInNa
         kRA9QEH1CewFUzc6MD7nH14ab1GrMOV4D+tGv6UdNx5CbDeKz4ZxZF4IMiq/u98exrlo
         uthrV0WG11VSYeLD3S7H5rhq/se//o61gVHv+VmABmUplbRAvdbjraSgv4VxuV6s/C44
         fKQJ6eaQdkxdntlQ0E28d3OPtLX2fUX4Mt5bizS7bHj1MXZXDhU0wQ4ni2V200BVdNFn
         tJSQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QiGypGw9;
       spf=pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=nilay@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by mx.google.com with ESMTPS id 3f1490d57ef6-e537d1acc33si22314612276.580.2025.01.07.10.01.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2025 10:01:26 -0800 (PST)
Received-SPF: pass (google.com: domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0353725.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 507E6Msw015736;
	Tue, 7 Jan 2025 18:01:20 GMT
Received: from ppma11.dal12v.mail.ibm.com (db.9e.1632.ip4.static.sl-reverse.com [50.22.158.219])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 4415r516h2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:01:19 +0000 (GMT)
Received: from pps.filterd (ppma11.dal12v.mail.ibm.com [127.0.0.1])
	by ppma11.dal12v.mail.ibm.com (8.18.1.2/8.18.1.2) with ESMTP id 507HxGnW026189;
	Tue, 7 Jan 2025 18:01:19 GMT
Received: from smtprelay06.wdc07v.mail.ibm.com ([172.16.1.73])
	by ppma11.dal12v.mail.ibm.com (PPS) with ESMTPS id 43yj123f8e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Jan 2025 18:01:19 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com [10.241.53.103])
	by smtprelay06.wdc07v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 507I1IXL25362980
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 7 Jan 2025 18:01:18 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0E88058063;
	Tue,  7 Jan 2025 18:01:18 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 39C3858056;
	Tue,  7 Jan 2025 18:01:15 +0000 (GMT)
Received: from [9.171.94.59] (unknown [9.171.94.59])
	by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
	Tue,  7 Jan 2025 18:01:14 +0000 (GMT)
Message-ID: <efa97d5d-49db-4f5f-9d3d-516c44ae4b16@linux.ibm.com>
Date: Tue, 7 Jan 2025 23:31:13 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 7/8] nbd: fix queue freeze vs limits lock order
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Damien Le Moal <dlemoal@kernel.org>, Ming Lei <ming.lei@redhat.com>,
        linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
        nbd@other.debian.org, linux-scsi@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net
References: <20250107063120.1011593-1-hch@lst.de>
 <20250107063120.1011593-8-hch@lst.de>
Content-Language: en-US
From: Nilay Shroff <nilay@linux.ibm.com>
In-Reply-To: <20250107063120.1011593-8-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: QqOBvFfPzQZOsbRCkZDQfSEPuqyBq1cl
X-Proofpoint-GUID: QqOBvFfPzQZOsbRCkZDQfSEPuqyBq1cl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-15_01,2024-10-11_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=534
 suspectscore=0 phishscore=0 clxscore=1015 adultscore=0 bulkscore=0
 impostorscore=0 malwarescore=0 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501070149
X-Original-Sender: nilay@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=QiGypGw9;       spf=pass (google.com:
 domain of nilay@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=nilay@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
 dis=NONE) header.from=ibm.com
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

Looks good to me.
Reviewed-by: Nilay Shroff <nilay@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/efa97d5d-49db-4f5f-9d3d-516c44ae4b16%40linux.ibm.com.
