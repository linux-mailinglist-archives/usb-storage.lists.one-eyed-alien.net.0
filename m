Return-Path: <usb-storage+bncBCUJ7YGL3QFBBHGK332QKGQEMM6LGHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1048.google.com (mail-pj1-x1048.google.com [IPv6:2607:f8b0:4864:20::1048])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2651CC75F
	for <lists+usb-storage@lfdr.de>; Sun, 10 May 2020 08:54:22 +0200 (CEST)
Received: by mail-pj1-x1048.google.com with SMTP id k10sf13990108pjj.4
        for <lists+usb-storage@lfdr.de>; Sat, 09 May 2020 23:54:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589093661; cv=pass;
        d=google.com; s=arc-20160816;
        b=heEJbYVv9J5G/9ubySIUUPmwg2GgeiJJPMo6vz6as0jC0DnqCztwgTrLEy6uc6bpz6
         GnAJY1XUJtsU7yLdh+qNsa2S9p97H3Jsay+goJhgljoBwZ1ABsLJgmcQV/xVs/A6mkY8
         YTa8ykbbxj/92+FMSLln61fkEuVheZ0SkEtIcnRiPTb7bmYxfSKmmvmuz8qzVEBHiEGS
         76Kj/HQdgw4x2mUGxs+rXwlDMlTSk/3D0uVPHJ41S4dgCKL7yQecoVfRZ5gxpucQhAuG
         +g7e3SZ1z2reCsVddk0wYh1uJ80axjN/Se6qaNh8r6ibG9leUdt8GDBQUF7cTnRbUcBE
         iRQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pZtYQR1o8gBhL/4A6tExTbk5Or6ZUi8qg4hBFcAwCok=;
        b=UfWV2E5wwGzCJZnu7TR1CMjOXBhhKgAdmJ7of9YWua9O6krz/vURgsfdRBFciUiB9j
         BLHPpD2X6Mjm5xhd62Ag4EE5XdhoDYHAMlxfkGcC8NNhwwkajMB59ub3MoVQtcYsJDFn
         3tBK7nLzlkHsJGifpb/Y0pZhjfMpWmHOff0VKk6pFaX9Z1oRdtFkSUxDe803brACf/pv
         c654vZJZJ1GidbhUS22sFJPR2z6xzuHjgATkfl6+HiQ6GfA/YnU+yrSXxbansTBMC0OO
         8j8ZaXeTKGHgUExNp6NXvDyVaA76keXab/Xdl5LmSViypSnAXOcahybcm/kbnXa9ecRe
         36xg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y7ll5aDo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pZtYQR1o8gBhL/4A6tExTbk5Or6ZUi8qg4hBFcAwCok=;
        b=Y8IZ898RbCxi/lJjxvqgc2nHg+j3+I1nWmfY3ueeLHPgQU17ow8Gy36Ez5K3mFDdAY
         gO+PaR98WHlNxYPjiTVJi8KHW34xFr8eXB101keJcvEYK8ZutV+ls2+yP+3IIbaCQ3kj
         gbZuRVhxbDR4RwHVQLTxj44ph95/ArxAzEwM8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pZtYQR1o8gBhL/4A6tExTbk5Or6ZUi8qg4hBFcAwCok=;
        b=NDXT8I8+ltIKOKB+fSsteQVe3sI2YqnVdGBsSoAz/cNMTz/wYIhhMcXRRAbW0EthYQ
         UNXAXO9Ux34zEspHi3Uwzembvf1/EwhgwLBMisPOr+ZXSqjVvWrgcjdzImtq8I2IWCo5
         smO+kGgL/l+CHrt7zFCBhNE2DruWl5mi/EeYQpm62J/EsAMYmsveuMVqUDvEThol3yxL
         u7z11M+UJXNbh41KQWdAxpWl4Ts6gESmVj5SwjqnNeKvi71zaRjIbNMRLXt/ogC29EeQ
         9kCUQJLlF8buOs4c5dGdljKAR4PPI5ipQq1llJd1yMqchcqmaogtozLlRKBDwFCQzmcp
         3Fpw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuYilRRzcxTn4Posn1CU4f+IWSX6XbD2DqGsUxb8melIdpIE7cbR
	V/OvoHJUmKOf0asZ793qX8jE/Q==
X-Google-Smtp-Source: APiQypJoi38dvDTsEiihjUt/prbyDCDftp+WHqx6ujRklWV+eTEsfvDYaZrCTGczaa1ftP3F2XlRzA==
X-Received: by 2002:a17:902:aa43:: with SMTP id c3mr9956538plr.7.1589093661099;
        Sat, 09 May 2020 23:54:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ca12:: with SMTP id x18ls14706460pjt.2.canary-gmail;
 Sat, 09 May 2020 23:54:20 -0700 (PDT)
X-Received: by 2002:a17:90a:a608:: with SMTP id c8mr15032452pjq.90.1589093659788;
        Sat, 09 May 2020 23:54:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589093659; cv=none;
        d=google.com; s=arc-20160816;
        b=Ns6DpZ4j3Wd8ncfz8au/0k5giEFb2ha5jGc7T5VA5RbNHyWtGodYV4u0X4HVpqtHes
         CBIHNRsWp1Hm1YPHuURef4zXvQnXTeM1IAL0YYVMopb6Rx+xwaGoGgMbS5MibGq5zc8y
         HEmHi/yIjH/A1j6h/pn49PCA34elZ8FGMN5pcjX/WA3Nfwt0nyGgqs7zgABFIaPprwXZ
         547pEYkrkWEFpc6FvA5LbGoLc00+U+CnHDnqV3MLEHmqaYtUl8JDgzi1y6oXkf029yMI
         Wanx+ZjIsxjo1s9xOcB6AZQEt1e7oMnkZqbxlUZiiCJRyf8CD7WNXibuDs2NBQcHhhVC
         81jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fYe4i4f2LK79cCrw11QrISb3GZrwVdTMeWIMtT9ic5U=;
        b=sZP6pW92ACtA8YtPkuSYfPMQmszuL9hxxWE6Oqm2+E/Db36GBQV04oINY7HZDhhikD
         +5IzGbRZui/A9WnFpRpgQTRR8Tih5OuOzR0ggwp0f5qyWOoSo2Qkf9YyEHA68do5e2s4
         mc9z4Izc6hAMe/pay+WwLjBwDdA1ztJyhcH+OylglnmH/3eu2O6/rSaus+NH4rt897yy
         e61DkO7J8sif7gmEZno9tSJ3/JJZ3MwwJ8nr0z7yNUBQ+S+UVJqXinwC96H2yS3cnHFD
         1uqeaGFE6+4fbsbK6LZ5mUMrWyPcdb+KcGa/ch7Rl4zgAV0eo7ApOc8bhHU44PJ1MOUz
         bKSw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y7ll5aDo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id m4si3024678pls.288.2020.05.09.23.54.19
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 May 2020 23:54:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CF10F20801;
	Sun, 10 May 2020 06:54:18 +0000 (UTC)
Date: Sun, 10 May 2020 08:54:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Dio Putra <dioput12@gmail.com>
Cc: oneukum@suse.com, linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, stern@rowland.harvard.edu,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: USB Attached SCSI breakage due no udev involvement
Message-ID: <20200510065416.GA3434442@kroah.com>
References: <CAOyCV0zW_20Jq6Rrb9=fhZQAHeqMMs_oHBJdTVt8Nqje0Zoeig@mail.gmail.com>
 <20200510054717.GA3365021@kroah.com>
 <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1f9c0b30-f440-de43-366f-28ccba6a22e2@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Y7ll5aDo;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Sun, May 10, 2020 at 01:48:24PM +0700, Dio Putra wrote:
> On 5/10/20 12:47 PM, Greg KH wrote:
> > On Sun, May 10, 2020 at 09:55:57AM +0700, Dio Putra wrote:
> >> Hi, it's first time for me to report user-space breakage in here, so
> >> i'm begging your pardon.
> >>
> >> I want to report that Linux 5.4 breaking my USB mount workflow due
> >> udevadm monitor report here (I'm using vanilla kernel 5.4.39 on
> >> Slackware64 Current and vanilla kernel 4.4.221 on Slackware64 14.2):
> > 
> > <snip>
> > 
> > Sorry, but what actually changed that you can see in the logs?
> Sorry, what do you mean? The dmesg log or the kernel changelogs?

Either, your message made them pretty impossible to compare with all of
the line-wrapping :(

> > What functionality broke?  What used to work that no longer does work?
> > 
> Yes, it supposed that just work and kernel could talk with udev, not just handled by the kernel.

I don't understand, what functionality changed?  What exactly used to
work that no longer does?

Did you change anything else other than the kernel on your system?  Did
you change to a newer version of udev/systemd or anything else?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200510065416.GA3434442%40kroah.com.
