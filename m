Return-Path: <usb-storage+bncBC3LF4U3SUORBUPEZWRAMGQE6VW34FI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com [209.85.166.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 104266F67C9
	for <lists+usb-storage@lfdr.de>; Thu,  4 May 2023 10:52:35 +0200 (CEST)
Received: by mail-io1-f72.google.com with SMTP id ca18e2360f4ac-7696bf2c54esf24248039f.3
        for <lists+usb-storage@lfdr.de>; Thu, 04 May 2023 01:52:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1683190353; cv=pass;
        d=google.com; s=arc-20160816;
        b=w3yXnyzEUycBQw38kfvofD6+GaI5OGNLd9npgU96aNC5gNm9sEH58ju3pddh6kzfnD
         BtRMM1FnmQpVa4nCa8V/gdg95Ex855Cvx8XR1KkmgH9eXMhHbycWUkxZA0BaILSyR+bm
         KN4CAKeqDW/gr/hc4Yfz0MM7pkiaanJRJAdFRcLyDurkeIYJVgFfNCAZOSHZwAUH2LGC
         cCqMJXPcEuOfiBXuDDV4UoopHbY5OZu2L6xNcWYyqtyQpd+9z+uZIY6Ih050jzskxHzc
         /BuEKhrTxf5h/4diO6xnVneTOQpGQRCNuANmpjkdEFgo4e/I88An3Brko92PYoc2SmyL
         /lJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:sender:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date;
        bh=77yrBWI0JC0ii0CCuoGNwEjoXd5k/6vlhnLJCGM7UDI=;
        b=AJpwl5WUOA50Sl04JyQiKpMTlctbI28HLHmWLXx6dM9mI5I3o0L/4pdKDa0l3Won2a
         dJriIL0AALFyfv/rZEASAJmknZphcu9YFqtohJf9YlqQPmfSjV6TrLuK4qyh1rmhtVE9
         7slXSz+PM+aLdYCRTSrxdZCaBFWrXMSWcMpdKUEA+b2h/uNzWl5ahLJpWCOE2jUqsN6Q
         Tb8tgpWSSA4OwmP1pHI1fkTPheRbcYd/3Fc/h8L4giIYdhf23OKqJGsSp/NhojJ8/lqp
         p6ZeHKofzoeD+/rDm/9BiaGrQTMQwGRpj9Wd1kEI/eKEr84IROe6zLsCrBxy8fGQo3w2
         tsGQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=IyyVIYuv;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683190353; x=1685782353;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:sender:in-reply-to:content-disposition
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=77yrBWI0JC0ii0CCuoGNwEjoXd5k/6vlhnLJCGM7UDI=;
        b=co8cez2xWRnhSt8TkuvbD5EOabo0uNfmcLruewSXjOIe4KEy128T1F9E5xrpp/wAL3
         t6X+pzVpFmmVszcDJ4x/h+mnLLTAj2CBycgxf1jULMq67B4HcuziXFDiccNmoC0tS+HD
         /GEHNNHalQaZyKOo1nYNTCoDm6ogdRWWspLiJHSaJ3uYlkQzfSR+WjOXgPsTus0C2J5m
         gZcXUcf6SCpMKpjt1hcRaK9LHt9mkDJLK7Ox0VkkFgckcoHqqdstNvjPO38+eH4wo1NL
         NoB1Mm09ZhsNwP27IhVwuzpLhTkl7nSjgYkq+vrUENpigiJlqdTsjOVTqRX6teXFbNt8
         gATw==
X-Gm-Message-State: AC+VfDxfoadgqxggUVBIkkFgF8t72VkeddgROgCdrF/sXsJsn0WCALi/
	CTts/UGRMJNfLVhNsgzSgAXG1g==
X-Google-Smtp-Source: ACHHUZ7k4ZLAr7Q0ZtoGCQYzGAYosJp0Av03kGyWoJ3M2r1fB80Llu/WiNpBcqOTW9HYbEb5dfUKfA==
X-Received: by 2002:a5d:94d3:0:b0:760:efd4:9583 with SMTP id y19-20020a5d94d3000000b00760efd49583mr11651223ior.1.1683190353735;
        Thu, 04 May 2023 01:52:33 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:1545:b0:760:bc59:ebd0 with SMTP id
 h5-20020a056602154500b00760bc59ebd0ls3609132iow.4.-pod-prod-gmail; Thu, 04
 May 2023 01:52:33 -0700 (PDT)
X-Received: by 2002:a5d:9c0f:0:b0:760:fa51:c8bc with SMTP id 15-20020a5d9c0f000000b00760fa51c8bcmr14861663ioe.19.1683190352958;
        Thu, 04 May 2023 01:52:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1683190352; cv=none;
        d=google.com; s=arc-20160816;
        b=laL6Yi01UtQCssLpGtvrPQUETTlz6j/c30ApPL5syYSGNIylQ6nRM/v6b1nThvA3Ai
         OOUnZCaDzDTYJbpvbzM4rGuYhJxz5J+2F9KEv44Vxd4tEFa5tFvFU2UNrZyd+6/L6FFn
         gWWaEFtiNoDZfgwZBQbDak+WlvRInqpDyqun0yAaXyIljpp1UQlVt8y8qpr4CQC+Aegk
         RsHeQPoi+wV2AH+Oex5k8fqderFCyqNiD5Nj0szPgLmqbk5ZodsLuLxcUR7ZeSN+SXId
         fiyCdxJrDtctIMOL5ckTklvz03HZRa5xigh2t1cGEeWTJiEkipfi/b/VPQ+ZK4RvnYF/
         stzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:sender:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ZTnS9zSi9xMln0tCtfiJ5m54kyrZ+iA3FnOsDmLRquY=;
        b=OXqo2Fgy6mTEOAkKH43JxvlUcfi7SOfcjVjT+YGESrs81YV40yyHAIHaXA9TKXBVs5
         sPG6NFwb7C4V4vGZK6m4ObJzOszJMUekCYhxavywBcaOqZU8I2qBRsY+G14ttgQ5hOq4
         L3K3GHnXivpQxRVRciKKq+EWNhqHRiGpxgiW17UggoqEkAsikyb4w61S04O4Vi3Q8U5X
         EZUETyBy6Nv16uADjupPgDYDMNyGcO3SeXn8RY7k5Wy/IKpZxB11jlZq0Xi2ivNqYL/+
         2k7YkkKzjpJpMC/qbMU5iFMlAOVmSGJm+CRwtNmsAyk6grFN4PenalthieJhl+2Kr0M/
         7XSA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=IyyVIYuv;
       spf=pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=bblock@linux.ibm.com;
       dmarc=pass (p=REJECT sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by mx.google.com with ESMTPS id p10-20020a056638190a00b0040fa8480ddcsi25757324jal.66.2023.05.04.01.52.32
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 May 2023 01:52:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0353726.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3448gHGb032124;
	Thu, 4 May 2023 08:52:32 GMT
Received: from ppma05fra.de.ibm.com (6c.4a.5195.ip4.static.sl-reverse.com [149.81.74.108])
	by mx0a-001b2d01.pphosted.com (PPS) with ESMTPS id 3qc9e5r9qt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 08:52:31 +0000
Received: from pps.filterd (ppma05fra.de.ibm.com [127.0.0.1])
	by ppma05fra.de.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 3442enYS027174;
	Thu, 4 May 2023 08:52:29 GMT
Received: from smtprelay04.fra02v.mail.ibm.com ([9.218.2.228])
	by ppma05fra.de.ibm.com (PPS) with ESMTPS id 3q8tv6j8x4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 04 May 2023 08:52:29 +0000
Received: from smtpav03.fra02v.mail.ibm.com (smtpav03.fra02v.mail.ibm.com [10.20.54.102])
	by smtprelay04.fra02v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 3448qQX927918772
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 4 May 2023 08:52:26 GMT
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B539B20040;
	Thu,  4 May 2023 08:52:26 +0000 (GMT)
Received: from smtpav03.fra02v.mail.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A15A220043;
	Thu,  4 May 2023 08:52:26 +0000 (GMT)
Received: from t480-pf1aa2c2 (unknown [9.152.212.144])
	by smtpav03.fra02v.mail.ibm.com (Postfix) with ESMTPS;
	Thu,  4 May 2023 08:52:26 +0000 (GMT)
Received: from bblock by t480-pf1aa2c2 with local (Exim 4.96)
	(envelope-from <bblock@linux.ibm.com>)
	id 1puUhO-006fPR-0m;
	Thu, 04 May 2023 10:52:26 +0200
Date: Thu, 4 May 2023 08:52:26 +0000
From: Benjamin Block <bblock@linux.ibm.com>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Oliver Neukum <oneukum@suse.com>, Hannes Reinecke <hare@suse.de>,
        Maxime Bizon <mbizon@freebox.fr>, linux-usb@vger.kernel.org,
        usb-storage@lists.one-eyed-alien.net, linux-scsi@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Martin K. Petersen" <martin.petersen@oracle.com>
Subject: [usb-storage] Re: Reproducible deadlock when usb-storage scsi command
 timeouts twice
Message-ID: <20230504085226.GC1032383@t480-pf1aa2c2.fritz.box>
References: <ZEllnjMKT8ulZbJh@sakura>
 <34a2e50b-e899-45ee-ac14-31fa0bb1616b@rowland.harvard.edu>
 <20230503102440.GL18384@t480-pf1aa2c2.fritz.box>
 <941e8420-f99f-5832-2ea9-3ba5eca545ad@suse.com>
 <20230503125137.GA1032383@t480-pf1aa2c2.fritz.box>
 <d25bfa50-b5a0-bd0e-fd14-94967e374033@suse.com>
 <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <97a67f78-4888-4fe7-9bfc-87d0bb6cc8b2@rowland.harvard.edu>
Sender: Benjamin Block <bblock@linux.ibm.com>
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: gwKcH8SzySWeuYUR-_XXWwEovfqhImqn
X-Proofpoint-GUID: gwKcH8SzySWeuYUR-_XXWwEovfqhImqn
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-05-04_05,2023-05-03_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 spamscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=870 suspectscore=0 clxscore=1015 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303200000 definitions=main-2305040069
X-Original-Sender: bblock@linux.ibm.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=IyyVIYuv;       spf=pass (google.com:
 domain of bblock@linux.ibm.com designates 148.163.156.1 as permitted sender)
 smtp.mailfrom=bblock@linux.ibm.com;       dmarc=pass (p=REJECT sp=NONE
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

On Wed, May 03, 2023 at 10:25:10AM -0400, Alan Stern wrote:
> On Wed, May 03, 2023 at 03:54:45PM +0200, Oliver Neukum wrote:
> > For the device a reset presumably does wipe out the command currently
> > under execution. The problem is within the driver. It thinks that
> > a command is still active. And we are limited to one command at a time
> > (on the whole bus - again protocol limitation)
> >=20
> > > On random thought I had: in theory you could implement your own EH
> > > strategy handler if the default one doesn't work for you. ATA and SAS=
 do so.
> > > [drivers/scsi/scsi_error.c:2285 `shost->transportt->eh_strategy_handl=
er()`]
> > > This can re-use parts/all of the existing escalation sequence in
> > > `scsi_eh_ready_devs()`.
> > >=20
> > > But that's no short-term fix.
> >=20
> > That looks like using a sledge hammer.
>=20
> I think the best answer is to accept the patch that started this email=20
> thread, perhaps with a minor change.  The driver can easily abort the=20
> currently running command (if any) on its own before starting a reset.

I don't think we would add an other layer of aborts in front of
device/LUN reset for all SCSI targets. That's just overkill for - it
seems - everything but USB storage, and would slow down error recovery
considerable in some cases.

If this is supposed to be done in the SCSI ML, it would have to be a
quirk/option IMO.

--=20
Best Regards, Benjamin Block        /        Linux on IBM Z Kernel Developm=
ent
IBM Deutschland Research & Development GmbH    /   https://www.ibm.com/priv=
acy
Vors. Aufs.-R.: Gregor Pillen         /         Gesch=C3=A4ftsf=C3=BChrung:=
 David Faller
Sitz der Ges.: B=C3=B6blingen     /    Registergericht: AmtsG Stuttgart, HR=
B 243294

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20230504085226.GC1032383%40t480-pf1a=
a2c2.fritz.box.
