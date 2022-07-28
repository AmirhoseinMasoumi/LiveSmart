#include "settings.h"

settings::settings(QObject *parent) :
    QObject{parent},
    m_currentTime("00:00:00"),
    m_currentDate("22 July 2022"),
    m_password("1234"),
    m_theme("day"),
    m_users({"Amirhosein Masoumi","Firstname Lastname 1","Firstname Lastname 2","Firstname Lastname 3"})
{
    timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(sendDataTime()));
    timer->start(1000);
}

settings::~settings()
{
    delete timer;
    qInfo() << "Setting closed";
}

const QString &settings::password() const
{
    return m_password;
}

void settings::setPassword(const QString &newPassword)
{
    if (m_password == newPassword)
        return;
    m_password = newPassword;
    emit passwordChanged();
}

const QString &settings::theme() const
{
    return m_theme;
}

void settings::setTheme(const QString &newTheme)
{
    if (m_theme == newTheme)
        return;
    m_theme = newTheme;
    emit themeChanged();
}

const QStringList &settings::users() const
{
    return m_users;
}

void settings::setUsers(const QStringList &newUsers)
{
    if (m_users == newUsers)
        return;
    m_users = newUsers;
    emit usersChanged();
}

const QString &settings::currentTime() const
{
    return m_currentTime;
}

void settings::setCurrentTime(const QString &newCurrentTime)
{
    if (m_currentTime == newCurrentTime)
        return;
    m_currentTime = newCurrentTime;
    emit currentTimeChanged();
}

const QString &settings::currentDate() const
{
    return m_currentDate;
}

void settings::setCurrentDate(const QString &newCurrentDate)
{
    if (m_currentDate == newCurrentDate)
        return;
    m_currentDate = newCurrentDate;
    emit currentDateChanged();
}

/////////////////////////////////////////////////////////////////////////
void settings::getPassword(QString password)
{
    setPassword(password);
}

void settings::getTheme(QString theme)
{
    setTheme(theme);
    qInfo() << theme;
}

void settings::newUser(QString user)
{
    m_users.append(user);
    emit usersChanged();
}

void settings::deleteUser(QString user)
{
    m_users.removeOne(user);
    emit usersChanged();
}

void settings::sendDataTime()
{
    QString time_format = "hh:mm:ss";
    QString date_format = "dddd d MMMM";
    QDateTime currentDateTime = QDateTime::currentDateTime();

    setCurrentTime(currentDateTime.toString(time_format));
    setCurrentDate(currentDateTime.toString(date_format));
}
