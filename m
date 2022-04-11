Return-Path: <usb-storage+bncBCIKNOFMWQGRBXEJZ6JAMGQEL7RME2Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 985414FB36E
	for <lists+usb-storage@lfdr.de>; Mon, 11 Apr 2022 08:04:13 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id m18-20020a170902db1200b0015834208448sf905243plx.9
        for <lists+usb-storage@lfdr.de>; Sun, 10 Apr 2022 23:04:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1649657052; cv=pass;
        d=google.com; s=arc-20160816;
        b=arD3K+L2g5PY2lZSnp40VLadFrtsKLrmHJv0VPjeauzr04mjMvuC6pVBHVab9cWgfj
         0Jq9uuX1VVT6w4UQZHIlg+oJDLxBan4LBJEpHSeTLbj7MYmRVL7kDzbZEzaIc5YlT9wP
         T/2UUdvOWVGcnUW+URFjptC91v9jbN8ERx2byCis28Wfh/w1hERRx6s/X7uRIEscfAf1
         kYZE6Wzi5cM1cCJ8644QdIPd4sifJkMS2tMac1nWFylvrmVUCHGGIY8XZVV7gsHZ+A6O
         QAu0tE7DdXd9+p7f8y7GfYj3hnMfHUoeY9Lxgj+lrl4chUR4KfTu4ugrln/7hrgmO6pw
         sGYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:mime-version:references
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=C+Nd6xKPj9G8NF4/aEyThfGYXmsmQ+Q4k9jjHSfFoz8=;
        b=UkezA3K3LAnknLFC8PK0RA8wrCdaBz6oVBY+i2XxEnKjPDFeyc9PVaCFUDUPbLffHa
         f5lVC20Jzi0gIsyVq5uCD+p012axajHwuVNrbb7xHf5OmpoA8L/zcepE7uyzUKiJpmlk
         J0VtaUZtEbB5Vdy5utQF0FtPDlFUbcUebi1I9v99O01uxsZC33OV5/WIOGyjiPl4GXYR
         Mnxb2TwBDnbo5OorwOEAFl+FySVCzvAdAwpYyGxyVgfY+xtMFzy9DiTCWrQTYKIDrMcn
         5c1KUl65jDRX1r53ySliwO+N3p3j7/vq2yRa8cISth+MH5lq7qd9jwdBpZFTxdzeaBrj
         ruRQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:references:mime-version
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+Nd6xKPj9G8NF4/aEyThfGYXmsmQ+Q4k9jjHSfFoz8=;
        b=I+IBe14PkN08pr2AQsuZDYsMRjYpSBgjmziEKTo2LsviicTeOSkKd3Da712AQfp/a3
         lqk1WjBu5x/t+WvX8w+mPIe2Ecy/VBxl7NMW+h3O2l9nNI2bACtwAB1wLRLVGin2oPDW
         Vvtf4gg+TT32O01/P+3HkqCMhh7PPpDW2YXek=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :references:mime-version:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C+Nd6xKPj9G8NF4/aEyThfGYXmsmQ+Q4k9jjHSfFoz8=;
        b=aUAOjtdkd+SeN6OIOToWbEw0ZLTppTjQ24Vr4FbevjGww11j5paIykli63jTssynJI
         2rOPbfC3z9c6nfFgKUWBj0bG64hIsL7ym2Bt8pfBVex7T2blpySMaVpbHtZZcCos8VR+
         XnlorrtNBrlCcm43AIz19uTUI8V6mSzlE/Skgjp+MMKan1lCs0MkqWRp5mns56j+CIxd
         yPZBSf9FtR3iktgDOd1YXmXhoLgv8MPS0u0rmk5fXdLNVtJpoXdb9XTotyTCPj1McbMn
         VEyVMHtPfx1mZ6GFNme+z3r3qdrjbVQUG/kao1TVoO5POXYl/4Ma9JwZzjBvixV1yCPF
         ouKA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533ZcSuiPWccxJqQQL5FwiQ5JdPksBT4CzcMCj1cvOXXo6AWU6UT
	n3eZ5D5bonCqc1fb1l+4Il3T0Q==
X-Google-Smtp-Source: ABdhPJyKqO/kW1FDn9wE3/5pH6JkGtP+rpq13A+1F1EiRuFuLibRjos35sf30kAfK9gdPKg8agDgJg==
X-Received: by 2002:a17:902:7088:b0:156:1aa9:79eb with SMTP id z8-20020a170902708800b001561aa979ebmr30578505plk.71.1649657052124;
        Sun, 10 Apr 2022 23:04:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6a00:b4e:b0:505:cd25:c7e1 with SMTP id
 p14-20020a056a000b4e00b00505cd25c7e1ls721780pfo.5.gmail; Sun, 10 Apr 2022
 23:04:11 -0700 (PDT)
X-Received: by 2002:a63:5759:0:b0:399:5816:6a80 with SMTP id h25-20020a635759000000b0039958166a80mr25533863pgm.253.1649657051261;
        Sun, 10 Apr 2022 23:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1649657051; cv=none;
        d=google.com; s=arc-20160816;
        b=Yi/QDgJI+RDXb/HrEoTIwHpEUKUr+w0ZJaet9Yb8AAG50N/JDI7/5tQQSscc7rHY1A
         8bLxAmdUtrTXMQlGMxzTF2yizdNCd323iro8Kiw6DeuSIigZxnlXkrt4Eoyp9f/UK1V3
         h5Wz0VHgLCT28FYxU3Bh6whHY/gebVcFfwG8vHpAJo1mIIUSvoRHsvO66GFn6ThnmtLT
         Yh1mXZlorXO/iCKGz3H1+Wl4SIsJqcTY5EoL9HY3psxBebt2I1l7AoyTuKMSVB+eQewf
         /5WHYdWuKeLlw2Gasdzd1zdRS+gpVTJfWl198z7hBYlIiQlp3Ow+3i+DTEzMuLfKizBB
         eGaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:mime-version:content-transfer-encoding:references
         :in-reply-to:subject:cc:to:from:date;
        bh=6zZruHzCJ58SCRD2V51HppYsOmgKmzQRqwJbpnbGze0=;
        b=lORmiBThD6KhwIE1GXK9yysCC4yKd+rSpKy2GqC/lyTzHrVwLObyMTko+r4IFInYHz
         YDDqIdGY1vaS4aYEhmWRuz1Kmu3yC2SRGK2ilBdBy3N1QOO3TEInfFYaM4RgKXIdnN1W
         RqLivnvPBplUfTzik8z98wlh2eFYzqjF9aiY+o2rpLfCVsWho7w+r/t35gEUmN16IMsv
         3Ktwssf59Bhq7pmVGfDDpEf4lowy4cC3zx+v/Fkkkw/vrAewAt9k+YglOtM67FQ3Stkr
         EIw38wtDw7NrPAuB2coFwpI0F0fuKQR0TcwLRY6iBnUNWlu0VxRHmJVVi2qRFz0SD2F5
         M4Sg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
Received: from zju.edu.cn (mail.zju.edu.cn. [61.164.42.155])
        by mx.google.com with ESMTP id 21-20020a631155000000b003995b0cf048si7936032pgr.766.2022.04.10.23.04.10
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 10 Apr 2022 23:04:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) client-ip=61.164.42.155;
Received: by ajax-webmail-mail-app2 (Coremail) ; Mon, 11 Apr 2022 14:04:07
 +0800 (GMT+08:00)
X-Originating-IP: [222.205.8.117]
Date: Mon, 11 Apr 2022 14:04:07 +0800 (GMT+08:00)
X-CM-HeaderCharset: UTF-8
From: "Lin Ma" <linma@zju.edu.cn>
To: "Alan Stern" <stern@rowland.harvard.edu>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, 
	usb-storage@lists.one-eyed-alien.net, mdharm-usb@one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH v0] USB: storage: karma: fix rio_karma_init return
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.13 build 20210104(ab8c30b6)
 Copyright (c) 2002-2022 www.mailtech.cn zju.edu.cn
In-Reply-To: <Yk73B5jKKMoYFCoj@rowland.harvard.edu>
References: <20220406100259.6483-1-linma@zju.edu.cn>
 <Yk2tR4iEr5/T6o+h@rowland.harvard.edu>
 <18ed9d8e.3c7eb.1800193253f.Coremail.linma@zju.edu.cn>
 <Yk73B5jKKMoYFCoj@rowland.harvard.edu>
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
Message-ID: <62bedbe9.4ec5.1801738e9ce.Coremail.linma@zju.edu.cn>
X-Coremail-Locale: en_US
X-CM-TRANSID: by_KCgAHXxXXxFNiWquDAQ--.33860W
X-CM-SenderInfo: qtrwiiyqvtljo62m3hxhgxhubq/1tbiAwIRElNG3GSM3AACs9
X-Coremail-Antispam: 1Ur529EdanIXcx71UUUUU7IcSsGvfJ3iIAIbVAYjsxI4VWxJw
	CS07vEb4IE77IF4wCS07vE1I0E4x80FVAKz4kxMIAIbVAFxVCaYxvI4VCIwcAKzIAtYxBI
	daVFxhVjvjDU=
X-Original-Sender: linma@zju.edu.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of linma@zju.edu.cn designates 61.164.42.155 as permitted sender) smtp.mailfrom=linma@zju.edu.cn
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

Hello Alan,

Sorry for the delay. I've sent another version of this patch.

> 
> That isn't true.  Look again at the code:
> 
> > /*
> >  * Just before we start our control thread, initialize
> >  * the device if it needs initialization
> >  */
> >  if (us->unusual_dev->initFunction) {
> >      p = us->unusual_dev->initFunction(us);
> >      if (p)
> >          return p;
> 
> If p isn't zero then this function uses p as its return value.  Thus it 
> does more with p than just check whether it is zero.
> 

Yeah, you are right. Well what I mean about the "bad thing" is that something wrong but the usb core continue to install this driver, just like what the karam driver is doing.

> >  }
> > 
> > I will then send patches to make sure all initFunction follow the standard.
> > 
> > > 
> > > And don't forget the error code for when the rio_karma_send_command() 
> > > call fails.  In that case the return value should be -EIO.
> > > 
> > 
> > Okay, will add this in next version of this patch.
> > 
> > > 
> > > Shouldn't this also be marked for the stable kernels?
> > > 
> > 
> > Sorry, I didn't get it, do you mean add another tag like "Cc: stable@vger.kernel.org"?
> > Or I just need to CC the mail to stable mail list?
> 
> I mean add another tag.  See the description of Option 1 in 
> Documentation/process/stable-kernel-rules.rst.
> 

Cool, have added this one.
Link: https://marc.info/?l=linux-usb&m=164965695228314&w=2

Thanks
Lin Ma

> Alan Stern
> 
> > 
> > Regards
> > Lin

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/62bedbe9.4ec5.1801738e9ce.Coremail.linma%40zju.edu.cn.
