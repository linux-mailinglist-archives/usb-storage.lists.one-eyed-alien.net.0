Return-Path: <usb-storage+bncBAABBD4OXT6AKGQEO3I24MY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDA6293FE4
	for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 17:49:36 +0200 (CEST)
Received: by mail-qt1-x845.google.com with SMTP id d1sf1964379qtq.12
        for <lists+usb-storage@lfdr.de>; Tue, 20 Oct 2020 08:49:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603208975; cv=pass;
        d=google.com; s=arc-20160816;
        b=g2Bs1+U1JY/XRnsRmwc2JP2Qs/DM/uvY92WaNEO6gPqxhg4eOGich1vspR5xu73ekl
         VqV1MjxxEkC+s7R2vza1go6l0f+WrH1QO4yZLH1N6+xskzbH1tVNlxObF+DN91BCMUJd
         Fa5w89GS3iOhht90TvY4ddcqKmGpHV9cPEulSiRlwoLRP77XrzvwXTm0c0vdXs2VErnz
         /ax2t9K5Wh6Va1beyjmLsTpE63XQ0i75ACI1gyvPkEyMF2etUZsQlGB0leDsWbJjb3O5
         OVyHoyG+kp+W5slpHLC8qk3ELrwHq7xiNQzdlVIkc9jVEUnBDhkclTbKml3yM+SyvC4l
         NwxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:to:cc:in-reply-to:date
         :subject:mime-version:message-id:from:sender:dkim-signature;
        bh=805ijWSZU9O/llZn/ouQawdaVV8Sbj5mvVhWLuv56fc=;
        b=ra7X40fdtPhcrq39/S+o2PlNVdtRdOnO1bmXOeD0VJ111YWSBErdVbXSfOtKwGdHXm
         v4B9TnD8k8HrhkmupngMlPcBnKqElFN+mwWaOFxxc2/d2qW3BjQqKINGGpQieoBV+eWI
         1DKiXUgubD5y1Y2blunKiQDcCqWfM1LOm1O20ir/DAIyEoO4RAhA9FMG4/Z/b7SXxPJO
         iC+TqcqdDrzeJQFWKfG4pheZOu/uUkjWbefcaiLXFWilFdGeiYlNj8s7+OwHTely5uLd
         +HPT/nXQWluu/3MToo+pIs/YhWrMSsrj/nWBR6I5Aydky+QP3pBWreEMmuZSsxgMBvwC
         AtIA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:from:message-id:mime-version:subject:date:in-reply-to:cc:to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=805ijWSZU9O/llZn/ouQawdaVV8Sbj5mvVhWLuv56fc=;
        b=OdiEYSdX8jOIRFPACsOPuCjnu61Mff+fXbVlt7HaFG2F1xqAiaovszlVpEN3TMOaLL
         rPI7q/6Kdt2ZtYNHFXlw9d7HYlo1AwqEZyopsSViUXUusEjk+1z8eiPqQr4cDZHc5WQI
         H0qfW3BklYRVk+gQCJr5u4w9DOBtAjQ001+So=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:message-id:mime-version:subject:date
         :in-reply-to:cc:to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=805ijWSZU9O/llZn/ouQawdaVV8Sbj5mvVhWLuv56fc=;
        b=WCbaDiyfGZ+SgVCRY3s1HX/BkXZ/pRtOxNfztlzYVT6ATEQTpzfW+pMuF5Nv1qgI1x
         EweEyFS3ovvqIouUgnxaIFKrLb4TCCjKHTBzvXNHIbtZGpJXXtCM5FHkfjfQG63xB/uZ
         YNVcJrF/NaW32hH4Z8fRmYHtXWCYaXTNyLogPxiVcPITNkECIxkFpCijWk6qu+K3jrDA
         +xIldRj7vwlwrvWX2TE5XMOEH5A4+Rh9qIsEgcF9iLAAZm/YnlSwqNiYbB9fz3C/+lIw
         hNwj+P8//p7/XvK+mQKrqrh9VjcOijEbXhWSuZjMVU1cL/gCnPzYIG0zTIhz6G1zO5YR
         cFiQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532vMY/FRAqWFT7r5SBMF03JaX1h9HYgA+Rx8EDnwqZRO1yjyEhg
	t52+Z1AfuMQhvm6J7E5tqUSMZQ==
X-Google-Smtp-Source: ABdhPJyoUIUMgDvPdsd44eddfeLlanhQ7z4in4urU9/SOfxd5ZkrjnmQ2uBHPEBDGnLAa2gAx3Dayw==
X-Received: by 2002:a05:620a:1287:: with SMTP id w7mr3493871qki.436.1603208975126;
        Tue, 20 Oct 2020 08:49:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:2f51:: with SMTP id k17ls859209qta.1.gmail; Tue, 20 Oct
 2020 08:49:34 -0700 (PDT)
X-Received: by 2002:ac8:2f91:: with SMTP id l17mr2993838qta.252.1603208974794;
        Tue, 20 Oct 2020 08:49:34 -0700 (PDT)
Received: by 2002:a37:b2c1:0:b029:12b:28f0:4e2b with SMTP id b184-20020a37b2c10000b029012b28f04e2bmsqkf;
        Tue, 20 Oct 2020 01:48:40 -0700 (PDT)
X-Received: by 2002:a05:620a:b13:: with SMTP id t19mr1589202qkg.3.1603183719832;
        Tue, 20 Oct 2020 01:48:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603183719; cv=none;
        d=google.com; s=arc-20160816;
        b=tX8X5GqSCjrHyefwFVJultmnPUm0EpLD2zj9A6dYNv/lc6dyBTsShqbJT2iWveC6vL
         cydTSv79dqq1hVSr7hKDjDNVC9OTWcA3jkGgZIDYErSfhDcNV9DD/SEwERRUaL4rSwD/
         PFWMByHwL4nLcjOQulIM/KeCys9Xaq5rttvXnm9VzwpMrtuYCSpePecOFauXU3yR25q+
         EpSVdKTnAyPfQo4YM7Zz3U1jdoks2allqBDfOYYx2uxNFpyG1PZGRiybCSR1COrGdo2f
         vr6zeD6bTyqNwa8+QxatLgO4meyOapkCU8omvu0U0j7JUcybwNqwbiS5fOcuwdFGOjrH
         hzXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:dkim-signature;
        bh=UBSvDuZX45rcdCwz1yIzvCzCqfd2joSCizhea4x+Xao=;
        b=E4Lecw359CQfu+gms/JDTihy1GYExh39mfrZB/mWiEqqMW1ZBDBtAoK8dm+je3UrV1
         7oalTmkI3DfwkPAPjpXu91gk36RtSa/6weeIcXbIS1sdwsCtj53GcA+2/fSEibxUwA/r
         RV5L31GLV0fXciEf6iboU6QB2CYqc4cFvifKfsUiI/GtxQ+kQit0JowRY8YlXWbELt8c
         1+kswnZv0hK1I4dF2ptYW7W5YrKnmr5TLGnPLQaMxAja7P6g96u97a2tmTvX3WYNT6dH
         Xf8xN265GNjnOepAUiSax1gL1LcB0XZAE3L76LAOqan3RWw+XmlX3Tg4RltPuEWBgQDK
         IjdA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by mx.google.com with ESMTPS id m11si637035qvx.15.2020.10.20.01.48.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 01:48:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of john.haxby@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09K8i7rI188082;
	Tue, 20 Oct 2020 08:48:12 GMT
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
	by userp2120.oracle.com with ESMTP id 347s8msmp0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Oct 2020 08:48:12 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
	by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09K8is45150623;
	Tue, 20 Oct 2020 08:48:12 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by userp3030.oracle.com with ESMTP id 348ahw07cp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Oct 2020 08:48:12 +0000
Received: from userp3030.oracle.com (userp3030.oracle.com [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 09K8mAEe159753;
	Tue, 20 Oct 2020 08:48:10 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by userp3030.oracle.com with ESMTP id 348ahw07bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 20 Oct 2020 08:48:10 +0000
Received: from abhmp0005.oracle.com (abhmp0005.oracle.com [141.146.116.11])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09K8lvTX021447;
	Tue, 20 Oct 2020 08:47:58 GMT
Received: from [10.175.164.120] (/10.175.164.120)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 20 Oct 2020 01:47:57 -0700
From: John Haxby <john.haxby@oracle.com>
Message-Id: <27A23102-A7F5-48C5-8972-48CE4C283C6E@oracle.com>
Content-Type: multipart/signed;
	boundary="Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3";
	protocol="application/pgp-signature";
	micalg=pgp-sha256
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.4\))
Subject: [usb-storage] Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
Date: Tue, 20 Oct 2020 09:47:45 +0100
In-Reply-To: <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
Cc: Tom Rix <trix@redhat.com>, alsa-devel@alsa-project.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Greg KH <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org,
        nouveau@lists.freedesktop.org, storagedev@microchip.com,
        dri-devel <dri-devel@lists.freedesktop.org>,
        virtualization@lists.linux-foundation.org, keyrings@vger.kernel.org,
        linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
        MPT-FusionLinux.pdl@broadcom.com,
        linux-stm32@st-md-mailman.stormreply.com,
        usb-storage@lists.one-eyed-alien.net, linux-watchdog@vger.kernel.org,
        devel@driverdev.osuosl.org, linux-samsung-soc@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-nvdimm <linux-nvdimm@lists.01.org>,
        amd-gfx list <amd-gfx@lists.freedesktop.org>,
        linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
        industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org,
        spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org,
        linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
        linux-pm@vger.kernel.org, linux-can@vger.kernel.org,
        linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
        xen-devel@lists.xenproject.org, linux-amlogic@lists.infradead.org,
        openipmi-developer@lists.sourceforge.net,
        platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-edac@vger.kernel.org, George Burgess <gbiv@google.com>,
        Network Development <netdev@vger.kernel.org>,
        linux-usb@vger.kernel.org,
        linux-wireless <linux-wireless@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-security-module@vger.kernel.org,
        "open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>,
        patches@opensource.cirrus.com, bpf <bpf@vger.kernel.org>,
        ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
To: Nick Desaulniers <ndesaulniers@google.com>
References: <20201017160928.12698-1-trix@redhat.com>
 <20201018054332.GB593954@kroah.com>
 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
X-Mailer: Apple Mail (2.3608.120.23.2.4)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9779 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 suspectscore=0
 lowpriorityscore=0 mlxlogscore=999 priorityscore=1501 spamscore=0
 phishscore=0 clxscore=1011 bulkscore=0 impostorscore=0 adultscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010200059
X-Original-Sender: john.haxby@oracle.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=q8gn83IP;
       spf=pass (google.com: domain of john.haxby@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=john.haxby@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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


--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3
Content-Type: text/plain; charset="UTF-8"



> On 19 Oct 2020, at 20:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> 
> We probably should add all 3 to W=2 builds (wrapped in cc-option).
> I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> follow up on.

It looks as though the URL mangling has been fixed.   If anyone sees that specific URL mangled, please let me know.

jch

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/27A23102-A7F5-48C5-8972-48CE4C283C6E%40oracle.com.

--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - http://gpgtools.org

iHUEAREIAB0WIQT+pxvb11CFWUkNSOVFC7t+lC+jyAUCX46kMQAKCRBFC7t+lC+j
yBKiAP90JVXdPzuAwtRGkROpw1eVCo7wCaZ5nOa8Oo0sN6gC9gD/S0eGTqQhmg+n
sXPJxPYqQsg09qmS6k/HX+AP5Oz2AMo=
=xx66
-----END PGP SIGNATURE-----

--Apple-Mail=_9F9749E9-79EA-41AB-B516-003ECE07BEE3--
